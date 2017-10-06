#!/bin/bash
#SBATCH -N 1
#SBATCH --time=6:00:00
#SBATCH --mem=4000
#SBATCH --gres=gpu:1
#SBATCH -o o_sydata_%j.out
#SBATCH -e e_sydata_%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=kchen@flatironinstitute.org

module load cudnn/cuda-8.0/6.0
module load anaconda3/4.4.0

source activate mazu

python -u synthetic_data.py

