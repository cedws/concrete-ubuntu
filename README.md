# immubuntu
A small UEFI + Secure Bootable Ubuntu image built entirely in Docker. This was mostly an experiment to see if OS images could be built reasonably without heavy and slow solutions like Packer.

Building images inside Docker requires a few tricks detailed in my blog post.

## Features
* Built entirely in Docker
* Small (rootfs squash is just 400MB!)
* UEFI + Secure Boot-able
* Resilient to corruption
* Resettable without reburn
* Fast and simple to build by leveraging Docker's layer cache

## TODO
* QEMU/VBOX conversion
* Encrypted flavour
* Use EXT4 `data=journal` where possible
* Create overlay filesystem on boot to reduce image size

## License
This project is currently unlicensed because there's some things I need to get sorted out.