#!/bin/bash

#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno27/lab5/
#SBATCH -J lab5_mariapatino
#SBATCH --cpus-per-task=4
#SBATCH --mail-type=END #END/START/NONE
#SBATCH --mail-user=maria.patinog@um.es

./file-cut.sh Sample1.fastq Sample1_cut.fastq & ./file-cut.sh Sample2.fastq Sample2_cut.fastq &
./file-cut.sh Sample3.fastq Sample3_cut.fastq & ./file-cut.sh Sample4.fastq Sample4_cut.fastq



