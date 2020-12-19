#!/bin/sh
#SBATCH --job-name=GQN_testing
#SBATCH --time=48:00:00
#SBATCH --mem=32G
#SBATCH --output=slurm.%j.out
#SBATCH --error=slurm.%j.err

module load python3
source /home/dbachm2m/projects/generative-query-network-pytorch/env/bin/activate

LOCATION="/home/dbachm2m/data"   # example: /tmp/data
BATCH_SIZE=64 # example: 64

#echo "Downloading data"
#gsutil -m cp -R gs://gqn-dataset/shepard_metzler_5_parts $LOCATION

#echo "Deleting small records" # less than 10MB
#DATA_PATH="$LOCATION/shepard_metzler_5_parts/**/*.tfrecord"
#find $DATA_PATH -type f -size -10M | xargs rm

echo "Converting data"
python3 tfrecord-converter.py $LOCATION shepard_metzler_5_parts -b $BATCH_SIZE -m "train"
echo "Training data: done"
python3 tfrecord-converter.py $LOCATION shepard_metzler_5_parts -b $BATCH_SIZE -m "test"
echo "Testing data: done"

#echo "Removing original records"
#rm -rf "$LOCATION/shepard_metzler_5_parts/**/*.tfrecord"
