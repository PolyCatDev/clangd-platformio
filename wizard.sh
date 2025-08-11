#!/bin/bash

read -p "Project Name: " pioProjectName
git clone https://github.com/PolyCatDev/clangd-platformio $pioProjectName
cd $pioProjectName

read -p "Board ID: " pioBoardID
./setup.sh $pioBoardID
cd ..
