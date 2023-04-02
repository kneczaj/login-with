#!/bin/bash
set -e
git remote add prod ssh://prod@${REMOTE}/home/prod/${PROJECT_NAME}/repo
