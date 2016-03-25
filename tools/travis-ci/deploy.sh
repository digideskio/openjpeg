#! /bin/bash

# This script executes the 'deploy' step when running under travis-ci

set -x

openssl aes-256-cbc -K $encrypted_02a35d19a032_key -iv $encrypted_02a35d19a032_iv -in tools/travis-ci/id_rsa_filetransfer.enc -out ~/.ssh/id_rsa -d
eval "$(ssh-agent -s)"
chmod 600 ~/.ssh/id_rsa
ssh-add ~/.ssh/id_rsa

ssh-keyscan -H step.esa.int >> ~/.ssh/known_hosts

scp  build/openjpeg-*.zip ${DEPLOY_TARGET}
