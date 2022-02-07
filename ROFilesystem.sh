#!/bin/bash
USERNAME=root
HOSTS="lexbz3172.cloud.dst.ibm.com"
SCRIPT="awk '$4~/(^|,)ro($|,)/' /proc/mounts"
for HOSTNAME in ${HOSTS} ; do
    ssh -l ${USERNAME} ${HOSTNAME} "${SCRIPT}"

done
