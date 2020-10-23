#!/bin/bash

path=$(pwd)
echo $path

# remove code directory
rm -r $path/code/
mkdir $path/code/
touch $path/code/.gitkeep