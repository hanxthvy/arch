#!/bin/bash

echo "Starting auto installer..."

qemu-system-x86_64 \
-enable-kvm \
-m ${MEMORY}G \
-smp ${CPU} \
-drive file=/vm/arch.qcow2,format=qcow2 \
-cdrom /vm/arch.iso \
-boot d \
-vnc :0
