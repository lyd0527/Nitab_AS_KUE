#############################################################
#### AS prediction(rMATs)
#############################################################


#############################################################
#### AS prediction(SUPPA)
#############################################################
conda install -c bioconda suppa
suppa.py generateEvents -i Nitab-K.gtf -o test.event -f ioe -e SE SS MX RI FL

#############################################################
#### AS prediction(ASprofile)
#############################################################
./ASprofile.b-1.0.4/extract-as Nitab-K.gtf nitab.hdrs >as_events.txt
perl ASprofile.b-1.0.4/summarize_as.pl tobacco-K-Nitab-v4.5.gtf as_events.txt -p asp
cut -f 2 asp.as.nr | sort | uniq -c

