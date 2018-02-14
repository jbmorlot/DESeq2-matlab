## Description:
DESeq 2 is an algorithm developped to compare the expression of 2 vectors of genes [[1]](http://doi.org/10.1186/s13059-014-0550-8). We present here a matlab version of the original algorithm [implemented in R](http://www.bioconductor.org/packages/release/bioc/html/DESeq2.html).

## Input:
matrix1: matrix where each line represent a sample in the condition 1 in the format samples x genes
matrix2: matrix where each line represent a sample in the condition 2 in the format samples x genes

## Output:
FDR : False Discovery Rate of all genes
Lo2FC : Log2 fold change between the normalized mean over all genes
meanExpr : normalized of each genes over the 2 conditions

## How to get the over/under-expressed genes:
The overexpressed genes are those with a FDR<0.1 and log2FC>1 and under-expressed
 with a FDR<0.1 and log2FC<-1

 [1] Love, M. I., Huber, W., & Anders, S. (2014). Moderated estimation of fold change and dispersion for RNA-seq data with DESeq2. Genome Biology, 15(12), 550. http://doi.org/10.1186/s13059-014-0550-8
