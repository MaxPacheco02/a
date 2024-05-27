#!/bin/bash

sudo route del 10.66.171.100
sudo ifconfig enp108s0 10.66.171.101
sudo route add 10.66.171.100 enp108s0

# IPV4 should be set manually to 10.66.171.101/8
