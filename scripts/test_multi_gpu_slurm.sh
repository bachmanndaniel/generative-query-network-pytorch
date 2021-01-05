#!/bin/sh
#SBATCH --partition=gpu4
#SBATCH --output=slurm.%j.out
#SBATCH --error=slurm.%j.err

module load python3
source /home/dbachm2m/projects/test/env/bin/activate

python3 test.py
