# mini_coredump

## Add 'core' partition in your partition.yml

Such as bsp/board/qcc743dk/config_fw_half/partition_cfg_4M.toml for spi_wifi. The coredump function will determine the size of this partition. When it is large enough, it will dump the entire RAM. When it is not large enough, it will only dump the relevant information of the task where the exception occurred.

For whole usage step, please refer to README_v1.md and README_v2.md.
