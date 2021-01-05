#!/bin/sh
export DEBUG_RUN=0
export CUDA_VISIBLE_DEVICES=0
DATA_DIR=$1

tensorboard --logdir "../logs" &
TENSORBOARD_PID=$!
echo "Started Tensorboard with PID: $TENSORBOARD_PID"

# Start training script
python3 ../run-gqn.py \
    --data_dir $DATA_DIR \
    --log_dir "../logs" \
    --batch_size 1 \
    --workers 6