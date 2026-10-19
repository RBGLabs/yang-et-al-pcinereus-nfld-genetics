#!/bin/bash
#SBATCH -p aces
#SBATCH -N 1
#SBATCH -n 4
#SBATCH -J Long_10K_admixture
#SBATCH -t 168:00:00

threads=4
working_dir=/home/jriley/Documents/clare/downstream_analyses/ADMIXTURE_ExON_revised
plink_basename=$working_dir/EXON_final

for k in {1..9}
do
    for r in {a..e}
    do
    out_dir=$working_dir/K${k}${r}
    mkdir -p $out_dir
    cd $out_dir
    admixture --cv -j$threads ${plink_basename}.bed $k > $out_dir/${k}${r}.log
    done;
done
