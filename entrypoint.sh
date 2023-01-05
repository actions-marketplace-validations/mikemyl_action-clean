#!/bin/bash

set -e

# https://askubuntu.com/questions/740805/how-can-i-remove-all-files-from-current-directory-using-terminal
find . -mindepth 1 -delete
