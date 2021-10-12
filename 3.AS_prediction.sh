#############################################################
#### AS prediction(rMATs)
#############################################################


#############################################################
#### AS prediction(SUPPA)
#############################################################
conda install -c bioconda suppa
suppa.py generateEvents -i Nitab-K.gtf -o suppa_AS.event -f ioe -e SE SS MX RI FL
wc -l *ioe

#############################################################
#### AS prediction(ASprofile)
#############################################################
./ASprofile.b-1.0.4/extract-as Nitab-K.gtf nitab.hdrs >as_events.txt
perl ASprofile.b-1.0.4/summarize_as.pl tobacco-K-Nitab-v4.5.gtf as_events.txt -p ASProfile
cut -f 2 ASProfile.as.nr | sort | uniq -c

