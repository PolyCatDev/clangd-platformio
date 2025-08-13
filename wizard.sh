#!/bin/bash

read -p "Project Name: " pioProjectName
git clone https://github.com/PolyCatDev/clangd-platformio $pioProjectName
cd $pioProjectName

read -p "Board ID: " pioBoardID
rm -rf .git wizard.sh
pio init --ide vim --board $pioBoardID
python3 conv.py
cd ..
