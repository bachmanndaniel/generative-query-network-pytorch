#!/bin/sh
export DEBUG_RUN=0
export CUDA_VISIBLE_DEVICES=0,1
DATA_DIR=$1

# Start training script
python3 ../run-gqn.py \
    --data_dir $DATA_DIR \
    --log_dir "../logs" \
    --batch_size 1 \
    --workers 6