#!/bin/bash

# terraform-docs does not work correctly as our folders do not contain a "main.tf" file
# we therefore needed to add the "--no-header" argument
set -e set -o nounset set -o pipefail
for directory in $(ls -1 ./infra-modules)
do
  terraform-docs md --hide header infra-modules/$directory > infra-modules/$directory/README.md
  git add "infra-modules/$directory/README.md"
done
