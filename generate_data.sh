#! /bin/bash

# File: generate_data.sh
# Version: 2020-09-01 11:37
# By: Johan Nylander <johan.nylander@nbis.se>
# Usage: ./generate_data.sh [n]
# Options: n is number of generated fasta files.
# Description: Set up files and folders jn_snkmk_example.
# Example output:
#  .
#  ├── concatenated.fas
#  ├── data
#  │   ├── 1.fas
#  │   ├── 2.fas
#  │   ├── 3.fas
#  │   └── 4.fas
#  ├── Makefile
#  ├── README.md
#  ├── setup.sh
#  └─── Snakefile

set -euo pipefail

if [ $# -eq 0 ] ; then
  n=4
else
  n=$1
fi

mkdir -p data

for (( i=1 ; i<=$n; i++ )) ; do
  echo -e ">${i}_first\nACGT\n>${i}_second\nACGT" > data/${i}.fas
done


