#!/bin/bash
# this is intended to work with Ubuntu 20.04
set -e
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

PROJECT_NAME=$1
PROJECT_DIR=/home/prod/${PROJECT_NAME}
DEPLOYMENT_DIR=${PROJECT_DIR}/tree
GIT_DIR=${PROJECT_DIR}/repo

echo "Making GIT repo"
mkdir -p ${GIT_DIR}
mkdir -p ${DEPLOYMENT_DIR}
cd ${GIT_DIR}
git init --bare
cd ${PROJECT_DIR}
git clone repo/ tree
