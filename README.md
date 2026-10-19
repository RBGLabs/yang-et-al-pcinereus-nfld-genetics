# Code and input files for "From One Island to Another: Identifying the Source Population of Eastern Red-backed Salamanders (Plethodon cinereus) in Newfoundland"

This is the code and input files (including data) for a paper that investigates the genetic origin of Eastern Red-backed Salamanders that were introduced to Newfoundland. The manuscript is currently under review (DOI will be provided on acceptance). The raw sequence reads have also been uploaded to GenBank (and will be linked here upon release). The following explains the contents of each folder within this repository:

# Folder contents

## Analyses/

### admixture/

* runs/: Contains the results of K = 1-9 replicate runs
* EXON_final.bed/bim/fam : Input files for the admixture analysis
* run_admixture.sh: Shell script to run admixture analysis

### dadi/

* runs/: Contains the results of 5 dadi runs
* NBNS-CBNL.sfs: Input sfs for dadi, made with easySFS.py (that can be found in the **Conversion_Scripts/** folder)
* All the .py files: Scripts for dadi analysis and visualisation from [dadi_pipeline](https://github.com/dportik/dadi_pipeline)

### iqtree

* output/: Contains all the output files from iqtree
* final.min4.phy.varsite.phy: Input file, made with vcf2phylip (that can be found in the **Conversion_Scripts/** folder)
* final_popmap.csv: Population map matching geographic region of sample collection in .csv format
* tree.Rmd: Tree visualisation using ggtree R package

### pca

* PCA.Rmd: Code for PCA using the [DartR package](https://green-striped-gecko.github.io/dartR/)

### tess

* tess.Rmd: Code for tess analysis using [tess3r package](https://github.com/bcm-uga/TESS3_encho_sen)

## Conversion_Scripts

* [easysfs.py](https://github.com/isaacovercast/easySFS): Used for creating the input .sfs formatted file for dadi analysis
* [vcf2phylip.py](https://github.com/edgardomortiz/vcf2phylip):  Used for creating the input file for iqtree analysis

## Filtering
* filter_ExON.html/ipnyb: Documentation of filtering steps
* blacklist: List of Ontario samples that were excluded from further analysis
* final.*: The resulting five vcf and converted files from filtering that were used in downstream analysis
* populations.snps.vcf: Starting vcf, provided by [IBIS](https://www.ibis.ulaval.ca/en/services-2/genomic-analysis-platform/) following their [STACKS workflow](https://github.com/enormandeau/stacks_workflow)
