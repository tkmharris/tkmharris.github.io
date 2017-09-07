#!/bin/bash

# Show the commands, and exit on errors
set -ex

# Make sure _site is up-to-date
jekyll build

# Ensure any commits are pushed to github
git push

# Switch to master, which is where we keep the built pages
git checkout master

# Clean the directory so it only contains CNAME and git files
find . -maxdepth 1 -not -name CNAME -a -not -name '.git*' -a -not -name . -exec rm -r {} \;

# Import _site folder from source
git checkout source -- _site

# Copy the generated files into the root directory
cp -r _site/* .
rm -r _site

# Commit the new content
git add .
git commit -am "build: $(date)"

# Push to github, to reflect the changes on my website
git push

# By default, we stay in the source branch, for ease of editing
git checkout source
