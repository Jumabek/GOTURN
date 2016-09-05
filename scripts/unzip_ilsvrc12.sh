#!/bin/bash
# accepts two arguments,
# BASE folder which contains 1000 zip files of the ImageNet
# OUTPUT_BASE where you want to save 1000 folders which contain unzipped class images
  


BASE=$1 
FILES=$BASE/*.tar
OUTPUT_BASE=$2 
for f in $FILES
do
  echo "Processing file $f"
  # Skip the "extra" files that only contain negative examples
  if [[ "$f" =~ "extra" ]]; then
    echo "Skipping $f"
    continue
  fi
  OUTPUT_FOLDER=${f#$BASE\/}
  OUTPUT_FOLDER=${OUTPUT_FOLDER%.tar}
  OUTPUT=$OUTPUT_BASE/$OUTPUT_FOLDER  
  echo $OUTPUT
  mkdir -p $OUTPUT
  # take action on each file. $f store current file name
  tar -xf $f -C $OUTPUT
done

