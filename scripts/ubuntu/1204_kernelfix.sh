#!/bin/bash
apt-get install linux-image-3.2.0-64-virtual
aptitude hold linux-image-3.2.0-64-virtual
apt-get remove linux-image-3.11.0-15-generic
apt-get remove linux-image-3.11.0-23-generic
