#### Alignment

id=test
db_star=
PE1=fastq2
PE2=fastq1
nt=30


STAR --twopassMode Basic --outSAMstrandField intronMotif \
               --outFilterIntronMotifs RemoveNoncanonical --outSAMattrIHstart 0 \
               --outSAMtype BAM SortedByCoordinate --twopass1readsN -1 --outSAMmapqUnique 60 \
               --genomeDir $db_star --runThreadN $nt --outFileNamePrefix $id \
               --readFilesIn $PE1 $PE2


#### RABT
```
stringtie ....
```

#############################################################
#### Quantification
#############################################################

featureCounts -T $nt -p -g gene_id -a $gtf -o Samples.featureCounts.txt *.bam

#### Quantification

FeatureCounts
