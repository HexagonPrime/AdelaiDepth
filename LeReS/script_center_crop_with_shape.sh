#!/bin/bash -l
#SBATCH --output=output_center_crop_with_shape.out
#SBATCH --mem=40G
#SBATCH --gres=gpu:1
#SBATCH --constrain='titan_xp|geforce_gtx_1080_ti'

source /itet-stor/shecai/net_scratch/conda/etc/profile.d/conda.sh
conda activate LeReS
export CPLUS_INCLUDE_PATH=/home/shecai/sparsehash/include
export PYTHONPATH=/home/shecai/Desktop/AdelaiDepth/LeReS
pip install --upgrade git+https://github.com/mit-han-lab/torchsparse.git@v1.0.0
python ./tools/test_shape.py --backbone resnext101