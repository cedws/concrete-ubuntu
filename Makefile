OUTPUT = build/image.img

all:
	DOCKER_BUILDKIT=1 docker build --platform linux/amd64 -o build --progress=plain .

run:
	qemu-system-x86_64 -hda ${OUTPUT} -enable-kvm -smp 4 -m 1G -bios /usr/share/OVMF/x64/OVMF.fd
