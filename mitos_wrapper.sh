#!/bin/bash

(
eval "$(/opt/conda/bin/conda shell.bash hook)"
conda activate mitos_env &&
PYTHONPATH= /opt/conda/envs/mitos_env/bin/runmitos.py "$@"
conda deactivate
)
