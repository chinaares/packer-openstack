%.qcow2: %.json;
	ls $<
	PACKER_CACHE_DIR="/srv/images/sources" packer build -except=virtualbox-iso $<
	qemu-img convert -O qcow2 -c qemu/packer-qemu.qcow2 /srv/images/$@
	rm -rf qemu

all: $(patsubst %.json,%.qcow2,$(wildcard *.json))
