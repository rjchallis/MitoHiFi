#!/bin/bash

(
eval "$($CONDA_DIR/bin/conda shell.bash hook)"
conda activate mitos_env &&
PYTHONPATH= $CONDA_DIR/envs/mitos_env/bin/runmitos.py "$@"
conda deactivate
)
