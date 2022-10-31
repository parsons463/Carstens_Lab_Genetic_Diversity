# clean aligned fasta files with trimal v1.2

# code to run in command line
# for i in *.afa; do bash trimal_clean.sh $i; done

# show file name
echo $1

# clean sequence file
trimal -in $1 -out ${1/.afa/_clean.afa} -resoverlap 0.85 -seqoverlap 50 -gt 0.15
