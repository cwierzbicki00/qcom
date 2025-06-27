#!/usr/bin/env python3
import argparse
import os
import subprocess
import shutil
import stat
import sys
import platform

def check_dependencies():
    # List of required binaries (not python packages)
    required_bins = [
        'git', 'gcc', 'g++', 'pkg-config', 'cmake', 'openssl', 'dbus-daemon', 'glib-compile-schemas',
        'avahi-daemon', 'ninja', 'python3', 'python3-venv', 'python3-dev', 'python3-pip', 'unzip',
        'g-ir-compiler', 'cairo-trace', 'readline', 'java'
    ]
    missing = []
    for bin in required_bins:
        if shutil.which(bin) is None:
            missing.append(bin)
    if missing:
        print("\nMissing required system packages:")
        print("  " + " ".join(missing))
        print("\nPlease install them with:")
        print("sudo apt-get install git gcc g++ pkg-config cmake libssl-dev libdbus-1-dev libglib2.0-dev libavahi-client-dev ninja-build python3-venv python3-dev python3-pip unzip libgirepository1.0-dev libcairo2-dev libreadline-dev default-jre")
        print("\nThen run:")
        print("python3 prepare_matter_code_for_qcc74x.py <app_type>")
        sys.exit(1)

def run_command(command, cwd=None, env=None):
    print(f"Running: {command}")
    try:
        subprocess.run(command, shell=True, check=True, cwd=cwd, env=env)
    except subprocess.CalledProcessError as e:
        print(f"Error: Command failed with exit code {e.returncode}")
        print(f"Command: {e.cmd}")
        sys.exit(e.returncode)

def ensure_executable(script_path):
    if os.path.exists(script_path) and not os.access(script_path, os.X_OK):
        print(f"Making {script_path} executable")
        st = os.stat(script_path)
        os.chmod(script_path, st.st_mode | stat.S_IEXEC)

def main():
    # Warn if running on Windows without WSL
    if platform.system() == "Windows":
        print("Warning: This script is intended for Unix-like environments. Use WSL or a Linux shell.")

#    check_dependencies()

    parser = argparse.ArgumentParser(description="Setup Matter SDK environment.", add_help=False)
    parser.add_argument(
        "app_type",
        type=int,
        choices=[1, 2],
        nargs="?",
        default=2,  # Set to 2 for light as default
        help="App type: 1 for contact sensor, 2 for light (default)"
    )
    # Print help if invalid argument is given
    if len(sys.argv) > 1 and sys.argv[1] not in ("1", "2"):
        parser.print_help(sys.stderr)
        print("\nExample usage:")
        print("python3 prepare_matter_code_for_qcc74x.py <app_type>")
        sys.exit(1)
    args = parser.parse_args()

    matter_dir = os.getcwd()
    # Set sdk_root to two levels up from the script's directory
    script_dir = os.path.dirname(os.path.abspath(__file__))
    sdk_root = os.path.abspath(os.path.join(script_dir, "../../../"))
    matter_dir = os.path.abspath(os.path.join(script_dir, "../../../../"))

    os.makedirs(matter_dir, exist_ok=True)
    os.chdir(matter_dir)

    chip_dir = os.path.join(matter_dir, "connectedhomeip")
    if os.path.exists(chip_dir):
        print(f"{chip_dir} already exists. Skipping git clone.")
    else:
        run_command("git clone -b v1.4-branch https://github.com/project-chip/connectedhomeip.git")
    os.chdir(chip_dir)

    run_command("git checkout b5c706d27947e8487ad4a5128d43569262a23c45")
    run_command("./scripts/checkout_submodules.py --shallow --recursive --platform linux")

    # Copy patch files
    patch_src = os.path.join(sdk_root, "examples/matter/v1.4")
    for item in os.listdir(patch_src):
        if item.startswith("000"):
            src_file = os.path.join(patch_src, item)
            dst_file = os.path.join(chip_dir, item)
            try:
                shutil.copy(src_file, dst_file)
                print(f"Copied patch: {item}")
            except Exception as e:
                print(f"Failed to copy {item}: {e}")
                sys.exit(1)

    run_command("git am 000*")

    # Prepare environment variables for subprocesses
    env = os.environ.copy()
    env["QCC74X_SDK_ROOT"] = sdk_root
    env["QCC74X_SDK_TOOLCHAIN"] = os.path.join(sdk_root, "toolchain/linux_x86_64/bin")

    # Ensure scripts are executable
    ensure_executable("scripts/activate.sh")
    ensure_executable("scripts/bootstrap.sh")

    print("Environment setup complete.")

    # Determine the build target based on app_type
    if args.app_type == 1:
        build_target = "qcc74x-qcc743dk-contact-sensor-wifi"
    else:
        build_target = "qcc74x-qcc743dk-light-wifi"

    # Check if Matter environment is already set
    matter_env_set = os.environ.get("PW_PROJECT_ROOT") is not None

    # Run all setup and build commands in a single bash session to preserve environment variables
    if not matter_env_set:
        bash_script = (
            "set -e;"
            f"export QCC74X_SDK_ROOT='{sdk_root}';"
            f"export QCC74X_SDK_TOOLCHAIN='{os.path.join(sdk_root, 'toolchain/linux_x86_64/bin')}';"
            "source scripts/activate.sh;"
            "scripts/bootstrap.sh -p qualcomm;"
            f"./scripts/build/build_examples.py --target {build_target} build"
        )
        run_command(f"bash -c \"{bash_script}\"")
    else:
        print("Matter environment detected (PW_PROJECT_ROOT set). Skipping environment setup and bootstrap.")
        build_cmd = f"./scripts/build/build_examples.py --target {build_target} build"
        run_command(build_cmd)

    # Print instructions for user to flash after successful compilation in a box
    print("\n" + "*" * 60)
    print("** Build completed successfully. **")
    print("** To flash the firmware, run the following command from the connectedhomeip directory")
    print(f"** connectedhomeip directory ({chip_dir}):")
    if args.app_type == 1:
        print("** python3 out/qcc74x-qcc743dk-contact-sensor-wifi/chip-qcc74x-contact-sensor-example.flash.py --port <your_serial_port>")
    else:
        print("** python3 out/qcc74x-qcc743dk-light-wifi/chip-qcc74x-lighting-example.flash.py --port <your_serial_port>")
    print("** Replace <your_serial_port> with the appropriate port (e.g., /dev/ttyACM1 or COM3).")
    print("*" * 60 + "\n")

if __name__ == "__main__":
    main()

