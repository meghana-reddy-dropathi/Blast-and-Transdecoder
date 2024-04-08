#!/usr/bin/env bash
# alignPredicted_args.sh
# Usage: bash scripts/alignPredicted_args.sh <final_proteins> <swissprot_db> 1>results/alignPredicted_args.outfmt6 2>results/logs/alignPredicted_args.err
# here, you are using many sequences; each will be run and compared to swissprot db
# let's make sure to run with -outfmt 6.  *NOTICE we are now using blastp*
# <final_proteins> results/predictedProteins/*transdecoder.pep
# <swissprot_db> /work/courses/BINF6308/inputFiles/blastDB/swissprot  
blastp -query $1 -db $2 -outfmt "6 qseqid sacc qlen slen length nident pident evalue stitle" -evalue 1e-10 -num_threads 4
