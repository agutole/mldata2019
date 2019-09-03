#! /bin/bash

wget -c https://meli-data-challenge.s3.amazonaws.com/train.csv.gz -P data && gzip -d data/train.csv.gz
head data/train.csv -n 100000 > data/train.chunk.csv
wget -c https://meli-data-challenge.s3.amazonaws.com/test.csv -P data
