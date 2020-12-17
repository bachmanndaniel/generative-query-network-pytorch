
#!/usr/bin/env bash


echo "Downloading data"
gsutil -m cp -R gs://gqn-dataset/shepard_metzler_5_parts/train/78* W:/Datasets/shepard_metzler_5_parts/train
gsutil -m cp -R gs://gqn-dataset/shepard_metzler_5_parts/train/79* W:/Datasets/shepard_metzler_5_parts/train
gsutil -m cp -R gs://gqn-dataset/shepard_metzler_5_parts/train/8* W:/Datasets/shepard_metzler_5_parts/train
gsutil -m cp -R gs://gqn-dataset/shepard_metzler_5_parts/train/9* W:/Datasets/shepard_metzler_5_parts/train
