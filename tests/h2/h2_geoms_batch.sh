#!/bin/bash
## h2_geoms_batch.sh
## Writes a batch submissions for a variable number of jobs using SLURM job
## array structure.
#SBATCH --job-name="h2_geom_tests"
#SBATCH --array=1-3
#SBATCH --nodes=1
#SBATCH --time=1:00:00
#SBATCH --mem=122GB
#SBATCH --workdir=/usr/lusers/jjradler/scripts/Hyak-Gaussian/tests/h2
#SBATCH --output="h2_geom_tests.%A.%a.out"
#SBATCH --partition=stf
#SBATCH --account=stf
#SBATCH --ntasks-per-node=1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=jjradler@uw.edu

# module directory
module load contrib/g09.a02
# pad the task ID with leading zeros (to get 001, 002, etc.)
GEOM_NUM=`printf %03d $SLURM_ARRAY_TASK_ID`

g09 < h2_geom${GEOM_NUM}.com > h2_geom${GEOM_NUM}.log

exit 0

