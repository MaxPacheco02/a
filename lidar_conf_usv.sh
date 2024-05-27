#!/bin/bash

sudo route del 192.168.1.201
sudo ifconfig enp108s0 192.168.1.200
sudo route add 192.168.1.201 enp108s0

# IPV4 should be set manually to 192.168.1.201 / 24
