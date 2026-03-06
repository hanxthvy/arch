#!/bin/bash

MEMORY=${MEMORY:-6}
CPU=${CPU:-4}
DISK=${DISK:-60}
USERNAME=${USERNAME:-arch}
PASSWORD=${PASSWORD:-arch}

export MEMORY CPU DISK USERNAME PASSWORD

mkdir -p /vm

if [ ! -f /vm/arch.qcow2 ]; then
  echo "Preparing VM..."
  ./scripts/mirror.sh
  ./scripts/disk.sh
  ./scripts/download_iso.sh
  ./scripts/install_vm.sh
fi

./services/novnc.sh &

./scripts/boot_vm.sh
