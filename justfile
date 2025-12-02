OUTPUT := "build/image.img"

# Default recipe: build and run
default: build run

# Build the image using Docker
build:
    DOCKER_BUILDKIT=1 docker build --platform linux/amd64 -o build --progress=plain .

# Run the image in QEMU
run:
    wget -nc https://github.com/clearlinux/common/raw/master/OVMF.fd
    qemu-system-x86_64 -hda {{OUTPUT}} -smp 4 -m 1G -bios OVMF.fd
