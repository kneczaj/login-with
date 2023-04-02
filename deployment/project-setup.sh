#!/bin/bash
# this is intended to work with Ubuntu 20.04
set -e
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
ssh prod@${REMOTE} 'bash -s' < ${SCRIPT_DIR}/project-setup-on-remote.sh ${PROJECT_NAME}
