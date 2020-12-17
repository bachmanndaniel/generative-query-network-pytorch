#!/usr/bin/env bash
$CUDA_VISIBLE_DEVICES=0,1
$DATA_DIR="W:\Datasets\shepard_metzler_5_parts_py/"

#Start-Process -NoNewWindow tensorboard -ArgumentList "--logdir" "../logs"
#echo "Started Tensorboard with PID: $TENSORBOARD_PID"
python ../run-gqn.py --data_dir $DATA_DIR --log_dir "../logs" --data_parallel "True" --batch_size 1 --workers 6