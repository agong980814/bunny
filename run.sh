#!/bin/bash
python ./main.py -mode train -saved_model models/model4.h5  -student_id 20413459 -epochs 20 -batch_size 32 -embedding_dim 256 -hidden_size 512 -drop 0.5
python main.py -mode test -saved_model models/model4.h5 -input data/valid.csv -student_id 20413459
python scorer.py -submission 20413459_valid_result.csv
