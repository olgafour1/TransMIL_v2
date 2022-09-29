#!/bin/bash
#SBATCH --job-name=test_gpu
#SBATCH --output=/home/ofourkioti/Projects/TransMIL_v2/results/ovarian_results.txt
#SBATCH --error=/home/ofourkioti/Projects/TransMIL_v2/results/test.err
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=08:00:00
#SBATCH --gres=gpu:1
#SBATCH --partition=gpu

module load anaconda/3
source /opt/software/applications/anaconda/3/etc/profile.d/conda.sh
conda activate torch-gpu
cd /home/ofourkioti/Projects/TransMIL_v2/

python train.py --stage='test' --config='ovarian/TransMIL.yaml'  --gpus=0 --fold=0
#python train.py --stage='test' --config='tcga/TransMIL.yaml'  --gpus=0 --fold=3



