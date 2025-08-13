# Overview

A template for automatically setting up a [PlatformIO](https://platformio.org/) + [Arduino](https://www.arduino.cc/) development environment.

Setting up [clangd LSP](https://clangd.llvm.org/) to work with [PlatformIO](https://platformio.org/) can be very finicky, this repo also tries to automate that.

> ⭐ If you find this project useful, consider starring [the original repo](https://github.com/ironlungx/nvim-pio) to help it gain visibility! A start for me would also be appreciated (˶ᵔ ᵕ ᵔ˶)

# Features

- [Clangd LSP](https://clangd.llvm.org/) support.
- Included Makefile for common actions.
- Fancy wizard for automatic project creation.

# How to use

## Automatic

### 1. Run the setup wizard

```sh
/bin/bash -c "$(curl -sSL https://raw.githubusercontent.com/PolyCatDev/clangd-platformio/refs/heads/main/wizard.sh)"
```
### 2. Keep It Up to Date

Every time you modify project libraries or config:

```sh
make updatedb
```

## Manual

### 1. Clone the repo

```sh
git clone https://github.com/PolyCatDev/clangd-platformio <project-name>
cd <project-name>
```

### 2. Remove git repo and wizard script

```sh
rm -rf .git wizard.sh
```

### 3. Initialize the project

```sh
pio init --ide vim --board <board-id>
```

### 4. Run Python script to generate `compile_commands.json` 

```sh
python3 conv.py
```

### 5. Keep It Up to Date

Every time you modify project libraries or config:

```sh
make updatedb
```
