#!/bin/bash
#SBATCH --job-name=datasetLoader
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=24
#SBATCH --time=50:00:00
#SBATCH --output=/home/ofourkioti/Projects/WSI-level-MIL/output_gen%j.out
#SBATCH --error=/home/ofourkioti/Projects/WSI-level-MIL/error_gen.err
#SBATCH --partition=smp

module load anaconda/3
source /opt/software/applications/anaconda/3/etc/profile.d/conda.sh
conda activate histo_env
cd /home/ofourkioti/Projects/WSI-level-MIL/vaegan_utils/
python dataloader.py