#!/bin/sh -l

set -eu

npm install -g markdownlint-cli

echo "================= markdownlint-cli lint check ===================="

find . -name \*.md  -exec markdownlint {} \; 2>msg.log

echo "=================================================================="

if [-e msg.log]; then
  if grep -q "MD0" msg.log; then
    cat msg.log
    exit 1
  fi
fi

