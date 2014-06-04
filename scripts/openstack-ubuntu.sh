#!/bin/bash
. /tmp/common.sh
set -x

tasksel install server
tasksel install cloud-image
tasksel install openssh-server

# use our specific config
mv -f /tmp/cloud.cfg /etc/cloud/cloud.cfg
$apt install sudo rsync curl less
rm -f /root/shutdown.sh
