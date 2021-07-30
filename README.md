# concrete-ubuntu
A small UEFI + Secure Bootable Ubuntu image built entirely in Docker. This was mostly an experiment to see if OS images could be built reasonably without heavy and slow solutions like Packer.

Building images inside Docker requires a few tricks detailed in [my blog post](https://cedwards.xyz/building-os-images-in-docker/).

## Features
* Built entirely in Docker
* Small (rootfs squash is just 400MB!)
* UEFI + Secure Boot-able
* Resilient to corruption
* Resettable without reburn
* Fast and simple to build by leveraging Docker's layer cache

This project is not associated with Ubuntu or Canonical. Ubuntu is a registered trademark of Canonical Ltd.
