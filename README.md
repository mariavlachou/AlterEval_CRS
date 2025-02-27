# AlterEval_CRS
This repository contains our collected dataset for evaluating Conversational Image Recommendation models with Alternative Relevance Judgments and the code to reproduce our two novel meta-user simulators that use the judgments to more accurately represent a user need.

## Dataset Information
The folders data_shoes and data_dresses contain the obtained relevance judgments for the two fashion categories, respectively. In each folder, three types of data are included. 

- The files 'judged_target_shoes.csv' 'judged_target_dresses.csv' contain the following columns:
  -  'Input.target1': denotes the target image item
  -  The columns 'Input.top1' to 'Input.top14': denote the 14 presented candidate alternatives per target
  -  The columns 'top1' to 'top14': denote the relevance of each presented candidate, based on participants' responses (True or False for each, based on whether they were selected or not)
 
- The files 'alter_target_ids_shoes.csv' 'alter_target_ids_dresses.csv' contain the following columns:
   - 'Input.target1': denotes the target image item
   - 'target_img_id': the document id of the target image item (based on the pyterrier_fcrs implementation)
   - 'alternative_id_y: the document id(s) of the identified alternative(s)
   - 'target_alt_id': the combined target-identified alternative ids with a user identifier (u) and the indicator for the first turn to be used as input to the simulator for the dialogue (t0)
   - 'qid': the concatenation of u-target id-t0
 
- The files 'input_shoes_CRS_df.csv' and 'input_dresses_CRS_df.csv' are the final pre-processed files that are used as an input for our meta-simulators and contain the following columns:
  - 'qid': the updated query id for the target image item, which is now an updated target of both the original target and the identified alternatives. This is contcatenated with the user identifier and t0.
  - 'docno': the name of the candidate image item for the corresponding target, as indicated in the target-candidate pairs of the original dataset
  - 'docid': the corresponding ids
  - 'rank': the rank of the candidate (top-ranked item), which is 0


## Meta-Simulator information
Running the experiments with our Meta-Simulators requires the installation of Pyterrier-fcrs[https://github.com/cmacdonald/pyterrier_fcrs]

The file 'shoes_ege_alter_exp.ipynb' contains an example experiment of our MetaSimProb with EGE in Shoes.
