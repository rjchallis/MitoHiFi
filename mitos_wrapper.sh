#!/bin/bash

(
eval "$($CONDA_DIR/bin/conda shell.bash hook)"
conda activate mitos_env &&
PYTHONPATH= /home/mu/miniconda3/envs/mitos_env/bin/runmitos.py "$@"
conda deactivate
)
