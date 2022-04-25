#!/bin/bash
#SBATCH --job-name=datatransfer_test
#SBATCH --output=/home/ofourkioti/Projects/WSI-level-MIL/datatransfer_test.txt
#SBATCH --error=/home/ofourkioti/Projects/WSI-level-MIL/datatransfer_test.err
#SBATCH --partition=data-transfer
#SBATCH --ntasks=1
#SBATCH --time=48:00:00


srun rsync -avP  /data/rds/DBI/DUDBI/DYNCESYS/OlgaF/sarcoma_scans/* /data/scratch/DBI/DUDBI/DYNCESYS/OlgaF/sarcoma/
#srun rsync -aP --delete   /data/rds/DBI/DUDBI/DYNCESYS/OlgaF/camelyon16/empty_dir/    /data/scratch/DBI/DUDBI/DYNCESYS/OlgaF/camelyon16/vae_patched_data/
#SBATCH --output=/data/scratch/DBI/DUDBI/DYNCESYS/OlgaF/camelyon16/camelyon_results/gan.txt


#SBATCH --output=/data/scratch/DBI/DUDBI/DYNCESYS/OlgaF/camelyon16/camelyon_results/gan.txt
#SBATCH --error=/data/scratch/DBI/DUDBI/DYNCESYS/OlgaF/camelyon16/camelyon_results/gan.err