#!/bin/bash

(
eval "$($CONDA_DIR/bin/conda shell.bash hook)"
conda activate mitofinder_env &&
PYTHONPATH= $CONDA_DIR/envs/mitofinder_env/bin/mitofinder "$@"
conda deactivate
)
