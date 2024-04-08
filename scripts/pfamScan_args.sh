#!/usr/bin/env bash
# pfamScan_args.sh
# Usage: bash scripts/pfamScan_args.sh <domtblout> <pfamapath> <longest_orfs> 1>results/logs/pfamScan_args.log 2>results/logs/pfamScan_args.err
# <domtblout> might be results/pfam.domtblout
# <pfamapath> might be /work/courses/BINF6308/inputFiles/SampleDataFiles/Pfam-A.hmm
# <longest_orfs> might be results/trinity_de_novo.transdecoder_dir/longest_orfs.pep
hmmscan --cpu 4 --domtblout $1 $2 $3
