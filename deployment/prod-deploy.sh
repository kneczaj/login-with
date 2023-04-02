#!/bin/bash
# this is intended to work with Ubuntu 20.04
set -e
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# TODO: assert if exists as it is git-ignored
scp ${SCRIPT_DIR}/../prod.env prod@${REMOTE}:/home/prod/${PROJECT_NAME}
git push -f prod HEAD:master && ssh prod@${REMOTE} 'bash -s' < ${SCRIPT_DIR}/prod-deploy-on-remote.sh ${PROJECT_NAME}
