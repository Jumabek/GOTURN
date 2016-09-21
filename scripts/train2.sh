#!/bin/bash

if [ -z "$4" ]
  then
    echo "No folder supplied!"
    echo "Usage: bash `basename "$0"` imagenet_folder imagenet_annotations_folder alov_videos_folder alov_annotations_folder"
    exit
fi

GPU_ID=0
MODEL_DIR=models/sms_wht_nms
FOLDER=GOTURN1
RANDOM_SEED=800

echo FOLDER: $FOLDER

VIDEOS_FOLDER_IMAGENET=$1
ANNOTATIONS_FOLDER_IMAGENET=$2
VIDEOS_FOLDER=$3
ANNOTATIONS_FOLDER=$4


SOLVER=$MODEL_DIR/solver.prototxt

TRAIN_PROTO=$MODEL_DIR/tracker.prototxt
#CAFFE_MODEL=nets/models/weights_init/tracker_init.caffemodel
#CAFFE_MODEL=NONE
CAFFE_MODEL=../caffe/models/bvlc_reference_caffenet_siamese/with_weight_names/caffenet_train_iter_130000.caffemodel





RESULT_DIR=$MODEL_DIR
SOLVERSTATE_DIR=$MODEL_DIR/solverstate

#Make folders to store snapshots
mkdir -p $SOLVERSTATE_DIR

#Modify solver to save snapshot in SOLVERSTATE_DIR
mkdir -p $MODEL_DIR/solver_temp
SOLVER_TEMP=$MODEL_DIR/solver_temp/solver_temp_$FOLDER.prototxt
sed s#SOLVERSTATE_DIR#$SOLVERSTATE_DIR# <$SOLVER >$SOLVER_TEMP
sed -i s#TRAIN_FILE#$TRAIN_PROTO# $SOLVER_TEMP
sed -i s#DEVICE_ID#$GPU_ID# $SOLVER_TEMP
sed -i s#RANDOM_SEED#$RANDOM_SEED# $SOLVER_TEMP

LAMBDA_SHIFT=5
LAMBDA_SCALE=15
MIN_SCALE=-0.4
MAX_SCALE=0.4

echo LAMBDA_SCALE: $LAMBDA_SCALE
echo LAMBDA_SHIFT: $LAMBDA_SHIFT

build/train $VIDEOS_FOLDER_IMAGENET $ANNOTATIONS_FOLDER_IMAGENET $VIDEOS_FOLDER $ANNOTATIONS_FOLDER $CAFFE_MODEL $TRAIN_PROTO $SOLVER_TEMP $LAMBDA_SHIFT $LAMBDA_SCALE $MIN_SCALE $MAX_SCALE $GPU_ID $RANDOM_SEED 2> $RESULT_DIR/results.log
