#!/usr/bin/env bash

SCRATCH_DISK=/disk/scratch
dest_path=${SCRATCH_DISK}/${USER}/flowplusplus/data
input_dir=${SCRATCH_DISK}/${USER}/flowplusplus/data
output_dir=${SCRATCH_DISK}/${USER}/flowplusplus/output

mkdir -p ${dest_path}
src_path=data

rsync --archive --update --compress --progress ${src_path}/ ${dest_path}