# TODO
* Try to get squashfs a bit smaller
* QEMU/VBOX conversion
* Data journal
* Panic and reboot on device removal
sudo debugfs -w -R "set_super_value mount_opts data=journal,journal_async_commit" test.img
* Runtime filesystem expansion