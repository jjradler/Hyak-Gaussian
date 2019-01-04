# Remaning Tasks in this Folder
#### 2018.10.05
At this point, I only need to set up the master "driver" script for SLURM setting
dependencies for a pipeline of calculations. In the context of this directory
with H2 tests, let's say I wanted to have a series of optimizations in different
solvents and at different levels of theory for H2. In order to save processor time
and streamline the process, I might submit a few geometries to optimize at a certain
level of theory, then solvate, then get frequencies.

The Batches are set up so each batch tier is only dependent on the previous BATCH
so as much as possible can be submitted in parallel.

Batch 1               |   Batch 2

h2_geom001 opt b3lyp ----- h2_geom001_aq opt b3lyp  ----- h2_geom001_aq freq b3lyp
                     \____ h2_geom001 m062X opt ----- h2_geom001 aq wB97XD opt

h2_geom002 opt b3lyp ---- h2_geom002_aq
h2_geom003 minimal
