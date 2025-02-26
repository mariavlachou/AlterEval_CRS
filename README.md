# AlterEval_CRS
This repository contains our collected dataset for evaluating Conversational Image Recommendation models with Alternative Relevance Judgments and the code to reproduce our two novel meta-user simulators that use the judgments to more accurately represent a user need.

## Dataset Information
The folders data_shoes and data_dresses contain the obtained relevance judgments for the two fashion categories, respectively. In each folder, three types of data are included. 

- The files 'judged_target_shoes.csv' 'judged_target_dresses.csv' contain the following columns:
  -  'Input.target1': denotes the target image item
  -  The columns 'Input.top1' to 'Input.top14': denote the 14 presented candidate alternatives per target
  -  The columns 'top1' to 'top14': denote the relevance of each presented candidate, based on participants' responses (True or False for each, based on whether they were selected or not)
