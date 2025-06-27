# Matter App Documentation

## Support for CHIP Platforms

Supported platforms: `qcc743`, `qcc744`

## Environment Setup

**Steps**:
   
### Sync the connectedhomeip source code

**Steps**:
   Navigate to the examples/matter/v1.4

   Run script "prepare_matter_code_for_qcc74x.py" to sync the connectedhomeip source code
   and apply qcc74x related changes on top of it.

   ```bash
   cd examples/matter/v1.4
   python prepare_matter_code_for_qcc74x.py <app_type: 1 for contact sensor, 2 for light>
   
   ```
   
   The command above will clone the connectedhomeip source code into the
   directory one level above the sdk root directory
   

### Steps to flash the image on to QCC74x

**Steps**:

1. After the example is compiled, a python script like ‘chip-qcc74x-lighting-example.flash.py’ (taking lighting-app as the example here) will be generated under ‘out/qcc74x-qcc743dk-light-wifi/’. This is used to download the matter image onto QCC74x SoC.

2. Connect the board to your build machine with USB cable.

3. Put the SoC to the download mode
	a. Press and hold the BOOT button.
	b. Click the RESET or EN button.
	c. Release the BOOT button.

4. Run the following command for flashing the matter image onto QCC74x. Please set the serial port accordingly, here we use /dev/ttyACM1 as the serial port.
```bash
	./out/qcc74x-qcc743dk-light-wifi/chip-qcc74x-lighting-example.flash.py --port /dev/ttyACM1
```

5. If you need to download the matter image with the whole flash erased, please append ‘—erase’ option.
```bash
	./out/qcc74x-qcc743dk-light-wifi/chip-qcc74x-lighting-example.flash.py --port /dev/ttyACM1 –erase
```
This option is useful when the QCC74x is already commissioned onto Matter network in the previous run but you want to reflash the image and recommission the QCC74x freshly in the next run.

6. Then, open serial console - /dev/ttyACM1 with baudrate 2000000 bps. The log will be displayed if the RESET button is pressed.


### Working with the CHIP Tool

The CHIP Tool (`chip-tool`) is a Matter controller implementation that allows to
commission a Matter device into the network and to communicate with it using
Matter messages, which may encode Data Model actions, such as cluster commands.

The tool also provides other utilities specific to Matter, such as parsing of
the setup payload or performing discovery actions.


### Source files

You can find source files of the CHIP Tool in the 
`connectedhomeip/examples/chip-tool` directory.


### Building the CHIP Tool

To build and run the CHIP Tool:

1. Open a command prompt in the `connectedhomeip` directory.

2. Run the following command:

    ```
    cd <MATTER_REPO_PATH>\connectedhomeip
    ./scripts/examples/gn_build_example.sh examples/chip-tool BUILD_PATH
    ```

    In this command, `BUILD_PATH` specifies where the target binaries are to be
    placed.



### Commissioning and Testing OnOff Function

Use the following commands on a linux machine on which chiptool is compiled
for commissioning and testing the OnOff capability:

```bash
./chip-tool pairing ble-wifi <node_id> <wifi_ssid> <wifi_passwd> 20202021 3840
./chip-tool onoff toggle <node_id> 1
```


### Commissioning Over BLE
1. Reset the QCC74x board.
2. Enter the build out folder of chip-tool on Raspberry PI and run the following command to initiate the Matter commissioning of QCC74x over BLE.

```bash
    ./out/linux-x64-chip-tool/chip-tool pairing ble-wifi <device_node_id> <wifi_ssid> <wifi_passwd> 20202021 3840
```
Ex: ./out/linux-x64-chip-tool/chip-tool pairing ble-wifi 1 Target 12345678 20202021 3840

3. Contact-sensor-app
	a. Remove the jumper 1-2 on the J3 connector. This is needed to enable the user actions with the BOOT button.
	b. On Raspberry PI, start chip-tool in interactive mode
```bash
		./chip-tool interactive start
```

	c. Subscribe boolean state under chip-tool interactive mode
	
```bash
		booleanstate subscribe state-value <min-interval> <max-interval> <deivce_node_id> 1
```
	<min-interval>, min interval to report the boolean state of contact sensor
	<max-interval>, max interval to report the boolean state of contact sensor
	<deivce_node_id>, node id of contact sensor/QCC74x

	Ex: 
```bash
	booleanstate subscribe state-value 5 10 1 1
```
	d. Click BOOT button on QCC74x EVK to toggle the boolean state and report its state to chip-tool as follows:

	[0J[0;32m[1748092215.549] [2845:2850] [TOO] Endpoint: 1 Cluster: 0x0000_0045 Attribute 0x0000_0000 DataVersion: 398675517[0m
[0J [0J[0;32m[1748092215.549] [2845:2850] [TOO]   StateValue: FALSE[0m [0J [0J[0;32m[1748092215.549] [2845:2850] [DMG] Refresh LivenessCheckTime for 23265 milliseconds with SubscriptionId = 0xf0328255 Peer = 01:0000000000000001[0m

	e. More actions with BOOT button
		i. Press and hold BOOT button for 100msec – 1sec will toggle the Boolean state.
		ii. Press and hold BOOT button for over 3 seconds will factory reset the module.

