#!/bin/bash
set -e
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 361769586062.dkr.ecr.us-east-1.amazonaws.com
docker pull 361769586062.dkr.ecr.us-east-1.amazonaws.com/kartik-repo:latest
docker run --name=kartik2 -d -p 2000:5000 361769586062.dkr.ecr.us-east-1.amazonaws.com/kartik-repo:latest

