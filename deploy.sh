#!/bin/bash

echo -e "\033[0;32mDeploying updates to Github...\033[0m"

# Build the project.
hugo

cd public
# Add changes to git.
git add -A

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -s -m "$msg"

# Push source and build repos.
git push origin master

cd ..
#git subtree push --prefix=public git@github.com:spencerlyon2/hugo_gh_blog.git gh-pages
