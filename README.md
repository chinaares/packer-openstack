packer-openstack
================

packer-openstack

#assembling
PACKER_CACHE_DIR="/srv/images/sources" packer build debian-7.5-amd64.json

#cleaning
rm -rf output-packer-debian-7.5-amd64 output-virtualbox-iso /root/VirtualBox*
