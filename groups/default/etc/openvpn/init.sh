#!/bin/bash
                                                                                
device="$1"                                                                     
                                                                                
/sbin/ifconfig $device 192.168.0.151 netmask 255.255.255.0 

