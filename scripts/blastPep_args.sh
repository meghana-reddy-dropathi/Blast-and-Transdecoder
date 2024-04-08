#!/usr/bin/env bash
# blastPep_args.sh
# Usage: bash scripts/blastPep_args.sh <longest_orfs> <swissprot_db> 1>results/blastPep_args.outfmt6 2>results/logs/blastPep_args.err

# <longest_orfs> might be results/trinity_de_novo.transdecoder_dir/longest_orfs.pep
# <swissprot_db> will be /work/courses/BINF6308/inputFiles/blastDB/swissprot  
blastp -query $1 -db $2 -max_target_seqs 1 -outfmt 6 -evalue 1e-5 -num_threads 4 
