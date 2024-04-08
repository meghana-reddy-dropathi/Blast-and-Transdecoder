#!/usr/bin/env bash
# predictProteins_args.sh
# Usage: bash scripts/predictProteins_args.sh <transcriptome> <transdecoder_dir> <domtblout> <outfmt> 1>results/logs/predictProteins_args.log 2>results/logs/predictProteins_args.err
# <transcriptome> might be data/trinity_de_novo/Trinity.fasta
# <transdecoder_dir> might be results/trinity_de_novo.transdecoder_dir
# <domtblout> might be results/pfam.domtblout
# <outfmt> might be results/blastPep_args.outfmt6
TransDecoder.Predict -t $1 -O $2 --retain_pfam_hits $3 --retain_blastp_hits $4
