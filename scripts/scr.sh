#!/bin/bash
python src/preprocess.py && python src/train.py -m BNB && python src/predict.py -m BNB -t func && coverage run src/unit_tests/test_preprocess.py && coverage run -a src/unit_tests/test_training.py && coverage report -m
echo "Sleeping had started"
sleep infinity
