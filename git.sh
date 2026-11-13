#!/bin/bash

# Colors & Formatting
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m' # No Color

echo -e "\n${CYAN}${BOLD}========================================${NC}"
echo -e "${CYAN}${BOLD}       🚀 Git Auto Push Utility         ${NC}"
echo -e "${CYAN}${BOLD}========================================${NC}\n"

# 1. Check if inside a Git repository
if ! git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
    echo -e "${RED}✖ Error: This folder is not a Git repository!${NC}\n"
    exit 1
fi

# 2. Get current branch
BRANCH=$(git branch --show-current)
echo -e "${CYAN}📍 Current Branch:${NC} ${BOLD}${BRANCH}${NC}\n"

# 3. Add all changes
echo -e "${YELLOW}⏳ Staging all changes...${NC}"
git add .

# 4. Check if there are changes to commit
if git diff-index --quiet HEAD -- 2>/dev/null && [ -z "$(git status --porcelain)" ]; then
    echo -e "${YELLOW}ℹ Koi naye changes nahi hain commit karne ke liye.${NC}"
else
    # Prompt for commit message
    read -p "Enter commit message (Press Enter for default): " msg
    
    # Use default message if empty
    if [ -z "$msg" ]; then
        msg="Update: $(date '+%Y-%m-%d %H:%M:%S')"
        echo -e "${YELLOW}Default message use kiya gaya:${NC} $msg"
    fi

    echo -e "${YELLOW}⏳ Committing changes...${NC}"
    git commit -m "$msg"
fi

# 5. Push to remote
echo -e "\n${YELLOW}⏳ Pushing changes to GitHub (${BRANCH})...${NC}"

if git push origin "$BRANCH" 2>/dev/null || git push; then
    echo -e "\n${GREEN}${BOLD}========================================${NC}"
    echo -e "${GREEN}${BOLD} ✔ Push Completed Successfully! 🎉      ${NC}"
    echo -e "${GREEN}${BOLD}========================================${NC}\n"
else
    echo -e "\n${RED}${BOLD}========================================${NC}"
    echo -e "${RED}${BOLD} ✖ Push NOT Completed! (Push Fail Ho Gaya)${NC}"
    echo -e "${RED} Check karein internet, remote URL ya permissions.${NC}"
    echo -e "${RED}${BOLD}========================================${NC}\n"
    exit 1
fi
