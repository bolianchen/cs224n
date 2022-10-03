#!/bin/bash

DATASETS_DIR="data"
mkdir -p $DATASETS_DIR

cd $DATASETS_DIR

if hash wget 2>/dev/null; then
  wget https://web.stanford.edu/class/archive/cs/cs224n/cs224n.1214/assignments/a3.zip
else
  curl -L https://web.stanford.edu/class/archive/cs/cs224n/cs224n.1214/assignments/a3.zip -o a3.zip
fi
 
unzip -j a3.zip "a3/data/*" -d data
rm a3.zip
