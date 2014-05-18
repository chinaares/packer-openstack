%.qcow2: %.json;
	PACKER_CACHE_DIR="/srv/images/sources" packer build -except=virtualbox-iso $<
	qemu-img convert -O qcow2 -c qemu/packer-qemu.qcow2 /srv/images/$@
	rm -rf qemu

%.vbox: %.json;
	PACKER_CACHE_DIR="/srv/images/sources" packer build -except=qemu $<
	mv virtualbox/packer-virtualbox-iso.vdi /srv/images/$@
	rm -rf virtualbox

qemu: $(patsubst %.json,%.qcow2,$(wildcard *.json))
vbox: $(patsubst %.json,%.vbox,$(wildcard *.json))
all: qemu vbox

