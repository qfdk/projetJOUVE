#!/bin/bash

DIR=~/bin

if [ ! -d "$DIR/lucene-solr" ]; then
	mkdir -p $DIR
	cd ~/bin/;
	#download:
	git clone https://github.com/bloomberg/lucene-solr.git&&cd lucene-solr
else
	cd "$DIR/lucene-solr"
fi

echo -e "[info]\e[1;34m Ant is required"

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

cd solr

#compile
ant ivy-bootstrap
ant dist 
ant server