#!/bin/bash

DIR=~/bin/

if [ ! -f $DIR ]; then
	mkdir -p $DIR
	cd ~/bin/;
	#download:
	git clone https://github.com/bloomberg/lucene-solr.git
fi

echo -e "[info]\e[1;34m Ant is required!\e[0m"

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



