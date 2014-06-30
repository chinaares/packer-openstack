#!/bin/bash
apt-get --yes --force-yes remove linux-image-3.11.0-15-generic
apt-get --yes --force-yes remove linux-image-3.11.0-23-generic
apt-get --yes --force-yes install linux-image-virtual
update-grub
