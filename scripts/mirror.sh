#!/bin/bash

reflector \
--latest 10 \
--sort rate \
--save /vm/mirrorlist
