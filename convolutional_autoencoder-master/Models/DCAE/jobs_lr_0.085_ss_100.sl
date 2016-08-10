#!/bin/bash -l

#SBATCH -p regular 
#SBATCH -N 1 
#SBATCH -t 01:45:00
#SBATCH -L SCRATCH   #note: specify license need for the file systems your job needs, such as SCRATCH,project

module load python
module load deeplearning

python Denoising_Conv_AE.py --epochs 1000 --samples 100 --batches 80 --lr 8.5e-2 --output 'New_lr_0.085_ss_100' 






