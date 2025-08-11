# Overview

Since getting the [clangd LSP](https://clangd.llvm.org/) to work with [PlatformIO](https://platformio.org/) is very finicky this repo tries to automate that.

> ⭐ If you find this project useful, consider starring [the original repo](https://github.com/ironlungx/nvim-pio) to help it gain visibility!

# How to use

### 1. Clone the repo

```sh
git clone https://github.com/ironlungx/nvim-pio <project-name>
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
pio init --ide vim && pio run -t compiledb
```

