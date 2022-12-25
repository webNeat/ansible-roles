#!/usr/bin/env bash

set -e

export PATH="$PATH:$HOME/.npm/bin"

cd {{home_dir}}/sites/{{site_name}}/code
git checkout -- .
git checkout {{repo_branch}}
git pull origin {{repo_branch}}
scripts/deploy
