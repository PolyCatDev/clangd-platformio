# Overview

Since getting the [clangd LSP](https://clangd.llvm.org/) to work with [PlatformIO](https://platformio.org/) can be very finicky, this repo tries to automate that.

> ⭐ If you find this project useful, consider starring [the original repo](https://github.com/ironlungx/nvim-pio) to help it gain visibility! A start for me would also be appreciated (˶ᵔ ᵕ ᵔ˶)

# How to use

## Fancy Wizard
```sh
/bin/bash -c "$(curl -sSL https://raw.githubusercontent.com/PolyCatDev/clangd-platformio/refs/heads/main/wizard.sh)"
```

## Manual

### 1. Clone the repo

```sh
git clone https://github.com/PolyCatDev/clangd-platformio <project-name>
cd <project-name>
```

### 2. Run the setup script

```sh
./setup.sh <board-id>
```

> [!NOTE] 
> The setup script will delete the existing git repo. A new one shall be ceated if need be.

### 3. Keep It Up to Date

Every time you modify project libraries or config:

```sh
make updatedb
```

# Extras

If you want the fancy wizard locally you can add this function to your `.bashrc` to get the same result.

```bash
mkpio() {
  read -p "Project Name: " pioProjectName
  git clone https://github.com/PolyCatDev/clangd-platformio $pioProjectName
  cd $pioProjectName

  read -p "Board ID: " pioBoardID
  chmod +x ./setup.sh
  ./setup.sh $pioBoardID
  cd ..
}
```
