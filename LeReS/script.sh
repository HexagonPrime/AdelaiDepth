#!/bin/bash -l
#SBATCH --output=output.out
#SBATCH --mem=40G
#SBATCH --gres=gpu:1
#SBATCH --constrain='geforce_rtx_2080_ti|titan_xp|geforce_gtx_1080_ti'

source /itet-stor/shecai/net_scratch/conda/etc/profile.d/conda.sh
conda activate LeReS
export PYTHONPATH=/home/shecai/Desktop/AdelaiDepth/LeReS
python ./tools/test_depth.py --backbone resnext101