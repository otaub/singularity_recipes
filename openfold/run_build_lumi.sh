#!/bin/bash
#SBATCH --account=project_462000007
#SBATCH --partition=standard
#SBATCH --time=03:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=128
#SBATCH --mem=224G

module purge
module load LUMI partition/G PRoot

export SINGULARITY_TMPDIR=/tmp
export SINGULARITY_CACHEDIR=/tmp
mkdir -p /tmp/tauberto/tmp

srun singularity build of.sif openfold.def
