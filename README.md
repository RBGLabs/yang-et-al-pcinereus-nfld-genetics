# yang-et-al-pcinereus-nfld-genetics

Code and input files for "From One Island to Another: Identifying the Source Population of Eastern Red-backed Salamanders (Plethodon cinereus) in Newfoundland"

Full citation:TBD

# Folder contents

## Analyses
### admixture
runs: contains results of K = 1-9 replicate runs

EXON_final.bed/bim/fam : input files for admixture

run_admixture.sh: shell script to run admixture
### dadi

runs: contains results of 5 dadi runs

NBNS-CBNL.sfs: input sfs for dadi, made with easySFS.py (found in Conversion_Scripts)

*.py: scripts for dadi analysis and visualisation. From [dadi_pipeline](https://github.com/dportik/dadi_pipeline)

### iqtree
output: contains all output files from iqtree

final.min4.phy.varsite.phy: input file, made with vcf2phylip (found in Conversion_Scripts)

final_popmap.csv: population map matching geographic region of sample collection in .csv 

tree.Rmd: tree visualisation using ggtree

### pca
PCA.Rmd: code for PCA using DartR package

### tess
tess.Rmd: code for tess analysis using tess3r package

## Conversion_Scripts
[easysfs.py](https://github.com/isaacovercast/easySFS)

[vcf2phylip.py](https://github.com/edgardomortiz/vcf2phylip)
## Filtering
filter_ExON.html/ipnyb: documentation of filtering steps

blacklist: list of Ontario samples that were excluded from further analysis

final.*: resulting vcf and converted files from filtering that were used in downstream analysis

populations.snps.vcf: starting vcf, provided by IBIS following their [STACKS workflow](https://github.com/enormandeau/stacks_workflow)
