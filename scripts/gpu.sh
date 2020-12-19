#!/bin/sh
#SBATCH --name=gqn_train
#SBATCH --partition=gpu4
#SBATCH --time=3-00:00:00
#SBATCH --output=slurm.%j.out
#SBATCH --error=slurm.$j.err

module load python3
source /home/dbachm2m/projects/generative-query-network-pytorch/env/bin/activate

export CUDA_VISIBLE_DEVICES=0,1
DATA_DIR=$1

# Start TensorBoard in background
#tensorboard --logdir "../logs" &
#TENSORBOARD_PID=$!
#echo "Started Tensorboard with PID: $TENSORBOARD_PID"

# Start training script
python3 ../run-gqn.py \
    --data_dir $DATA_DIR \
    --log_dir "../logs" \
    --data_parallel "True" \
    --batch_size 1 \
    --workers 6
