#!/bin/bash

if ! [ "$(ping -c 1 google.com)" ]; then
    reboot
fi