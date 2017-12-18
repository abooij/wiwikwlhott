#!/bin/bash

set -x

# export REMOTE_URL=$(git remote get-url origin)

REPO="git-gh-pages"

git init $REPO

cp -a _build/html/* $REPO

pushd $REPO

export MESSAGE="Autoupdate documentation from travis

Generated with 'make html'"

git add .
git commit -m "$MESSAGE"

git remote add origin git@github.com:abooij/wiwikwlhott # $REMOTE_URL

eval $(ssh-agent -s)

set +x
echo "Loading SSH private key..."
echo "$SSH_PRIVATE_KEY" | base64 -d | ssh-add -
set -x

git push -f origin HEAD:gh-pages

popd

set +x
