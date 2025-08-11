#!/bin/bash

pio init --ide vim --board $1
python3 conv.py
