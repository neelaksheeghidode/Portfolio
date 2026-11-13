#!/bin/bash

# Color Variables
GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo -e "${CYAN}=== Starting Auto Push ===${NC}"

read -p "Enter commit message: " msg

git add .
git commit -m "$msg"
git push

echo -e "${GREEN}=== Push Completed Successfully! ===${NC}"
