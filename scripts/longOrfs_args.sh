#!/usr/bin/env bash
# longOrfs_args.sh
# Usage: bash scripts/longOrfs_args.sh <transcriptome> <result folder> 1>results/logs/longOrfs_args.log 2>results/logs/longOrfs_args.err

# <transcriptome> might be data/trinity_de_novo/Trinity.fasta
# <result folder> might be results/trinity_de_novo.transdecoder_dir
TransDecoder.LongOrfs -t $1 -O $2 
