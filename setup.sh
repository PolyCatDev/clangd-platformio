#!/bin/bash

rm -rf .git wizard.sh
pio init --ide vim --board $1
python3 conv.py
