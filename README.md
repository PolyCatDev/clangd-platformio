# Overview

A template for automatically setting up a PlatformIO Arduino development environment.

Setting up [clangd LSP](https://clangd.llvm.org/) to work with [PlatformIO](https://platformio.org/) can be very finicky, this repo also tries to automate that.

> ⭐ If you find this project useful, consider starring [the original repo](https://github.com/ironlungx/nvim-pio) to help it gain visibility! A start for me would also be appreciated (˶ᵔ ᵕ ᵔ˶)

# How to use

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

If you want a fancy wizard you can run this.
```sh
/bin/bash -c "$(curl -sSL https://raw.githubusercontent.com/PolyCatDev/clangd-platformio/refs/heads/main/wizard.sh)"
```

Or adding this function to your `.bashrc` will give you the same result.

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
