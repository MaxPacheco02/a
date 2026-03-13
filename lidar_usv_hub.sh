#!/bin/bash

sudo route del 192.168.1.201
sudo ifconfig enx00e04c360b12 192.168.1.200
sudo route add 192.168.1.201 enx00e04c360b12 

# IPV4 should be set manually to 192.168.1.201 / 24
