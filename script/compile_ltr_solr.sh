#!/bin/bash

#download:
git clone https://github.com/bloomberg/lucene-solr.git&&cd lucene-solr
echo -e "[info] ant is required!"

cpt=1
for v in `git branch -va | awk '{print $1}' |sed -e '1,4d' `
do
    echo $cpt ") " $v
    cpt=$[$cpt+1*1]
    
done

echo "Type the number of the branch that you want to checkout to, followed by [ENTER]:"
read branchNumber
cpt2=1
for v in `git branch -va | awk '{print $1}' |sed -e '1,4d' `
do
	if [ $cpt2 = $branchNumber ]
	then
		#switch to wanted branch
		git checkout $v
		break
	fi
	cpt2=$((cpt2+1))
done



#compile
ant dist 
ant server



