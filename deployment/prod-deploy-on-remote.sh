#!/bin/bash
# this is intended to work with Ubuntu 20.04
set -e
PROJECT_NAME=$1
PROJECT_DIR=/home/prod/${PROJECT_NAME}
DEPLOYMENT_DIR=${PROJECT_DIR}/tree
GIT_DIR=${PROJECT_DIR}/repo
cd ${DEPLOYMENT_DIR}
git fetch
# this is local master at prod repo which is pushed to from outside
git reset --hard origin/master
git submodule init
git submodule update
export $(cat ${DEPLOYMENT_DIR}/common.env ${PROJECT_DIR}/prod.env | sed -e '/#/d' | xargs)
echo "Building new containers"
yarn prod:base build
echo "Ensuring the old containers are not run"
yarn prod:base down --remove-orphans
echo "Running new containers"
yarn prod:base up -d
