OUTPUT = build/image.img

all:
	DOCKER_BUILDKIT=1 docker build -o build --secret id=secret,src=secret .
	
run:
	qemu-system-x86_64 -hda ${OUTPUT} -enable-kvm -smp 4 -m 1G -bios /usr/share/OVMF/x64/OVMF.fd
