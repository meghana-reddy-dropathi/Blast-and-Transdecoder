# Module 9 Assignment(BLAST and TransDecoder)

# Author

**Meghana Reddy Dropathi**

## Date created

**03-04-2023**

## Prerequisites

1. Make sure the *results* directory is made before the scripts is run.

## Methods

The transdecoder program is included in Trinity. As we dealt with mRNA sequences we ran Transdecoder first and then blastp.

### Finding the longest open reading frames(ORFs)

Open reading frames of the **Trinity.fasta** data in the *trinity_de_novo* directory were found using TransDecoder. The results were created and were stored in a directory called trinity_de_novo.transdecoder_dir.

### Aligning Protein(from the ORFs) to SwissProt

The longest_orfs.pep was taken as the query and it was compared with SwissProt database and an output file was generated. BLAST[2] was used for the above. This was done using blastp as the query and database, both were proteins.

### Running hmmscan 

hmmscan[3] was run taking the protein sequences found in open reading frames and searched for those against the profile-HMM database. Output was ranked according to the most important matches.

### Predict Proteins

The coding regions were predicted from the long ORFs which were created earlier. 

### Aligning predicted proteins from the above output

blastp[2] was run against the SwissProt database. More than one target sequence was taken and the e value was set to 1e-10.

## Conclusions

The data from the last assignment was taken to find the predicted proteins or the optimum local alignment. As the data files had mRNA sequences the Transdecoder program is run to find predicted proteins. This is done so that the output files produced from the earlier step can be used for running blast against SwissProt database. hmmscan is used to find protein domains.The files ending with **outfmt6** extension contain many details such as the *e value*, *bit score*, information about the match or hit and query information like query length, query id . The proteins are predicted.After doing blastp(we are dealing with proteins),we get a output alignedPredicted_args.txt which contain the query length, e value and so on.

We get various output directories and files:

- predictedProteins

*This directory consists an pep file which contains the predicted proteins*

- trinity_de_novo.transdecoder_dir

*Consists of many files, but the main file we use for further analysis is longest_orfs.pep*

- trinity_de_novo.transdecoder_dir.__checkpoints

- trinity_de_novo.transdecoder_dir.__checkpoints_longorfs

- pfam.domtblout

*The output of hmmscan*

- logs

**Contains files with log and err extensions.**

- blastPep_args.outfmt6

*It is blastpep output.*

- alignPredicted.txt    

*It is the output of alignPredicted_args.sh*

## Contents 

### Scripts directory

1. longOrfs_args.sh

2. blastPep_args.sh

3. pfamScan_args.sh

4. predictProteins_args.sh

5. alignPredicted_args.sh

### sbatch_transdecoder.sh

### batch-transdecoder-35064938.output

### logs directory in the results directory

## References

1.Grabherr, M. G. M. G., Haas, B. J. B. J., Yassour, M. M., Levin, J. Z. J. Z., Thompson, D. A. D. A., Amit, I. I., Adiconis, X. X., Fan, L. L., Raychowdhury, R. R., Zeng, Q. Q., Chen, Z. Z., Mauceli, E. E., Hacohen, N. N., Gnirke, A. A., Rhind, N. N., di Palma, F. F., Birren, B. W. B. W., Nusbaum, C. C., Lindblad-Toh, K. K., … Regev, A. A. (2011). Trinity: reconstructing a full-length transcriptome without a genome from RNA-Seq data. Nature Biotechnology, 29(7), 644–652. https://doi.org/10.1038/nbt.1883

2.McGinnis, S., & Madden, T. L. (2004). BLAST: at the core of a powerful and diverse set of sequence analysis tools. Nucleic Acids Research, 32(suppl-2), W20–W25. https://doi.org/10.1093/nar/gkh435

3.Eddy, S. . (1998). Profile hidden Markov models. Bioinformatics (Oxford, England), 14(9), 755–763. https://doi.org/10.1093/bioinformatics/14.9.755
