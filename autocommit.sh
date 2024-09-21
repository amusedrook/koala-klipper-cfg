#!/bin/bash

# Based on:
# https://github.com/EricZimmerman/VoronTools/blob/main/autocommit.sh
# Trimmed to bare-bones

# Path to config folder
config_folder=~/printer_data/config

# Repo branch (default: main)
branch=main

push_backup(){
  cd $config_folder
  git pull origin $branch --no-rebase
  git add .
  current_date=$(date +"%Y-%m-%d %T")
  git commit -m "Autocommit from $current_date"
  git push origin $branch
}

push_backup
