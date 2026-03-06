#!/bin/bash

qemu-system-x86_64 \
-enable-kvm \
-m ${MEMORY}G \
-smp ${CPU} \
-drive file=/vm/arch.qcow2,format=qcow2 \
-device virtio-gpu-pci \
-vnc :0 \
-net nic \
-net user,hostfwd=tcp::3389-:3389,hostfwd=tcp::2222-:22
