#!/bin/bash
                                                                                
device="$1"                                                                     
                                                                                
ifconfig="/sbin/ifconfig"                                                       
                                                                                
test "$HOSTNAME" = "ks01" && $ifconfig $device 192.168.0.151 netmask 255.255.255.0      
test "$HOSTNAME" = "ks03" && $ifconfig $device 192.168.0.153 netmask 255.255.255.0    
