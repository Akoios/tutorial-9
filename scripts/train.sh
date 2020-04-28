#!bin/bash
# Simple script to programmatically retrain the model 

curl -X POST "https://services.demo.akoios.com/bcc/train_svm?param=$1" -H "accept: text/plain" -H "Content-Type: text/plain" -d "{}"