#!/bin/sh
#SBATCH --job-name=gqn_train
#SBATCH --partition=gpu4
#SBATCH --mem=92G
#SBATCH --time=2-00:00:00
#SBATCH --output=slurm.%j.out
#SBATCH --error=slurm.%j.err

module load cuda/10.2
module load python3
source /home/dbachm2m/projects/generative-query-network-pytorch/env/bin/activate

export DEBUG_RUN=0
export CUDA_VISIBLE_DEVICES=0,1
DATA_DIR=$1

# Start training script
python3 ../run-gqn.py \
    --data_dir $DATA_DIR \
    --log_dir "../logs" \
    --data_parallel "True" \
    --batch_size 12 \
    --workers 1