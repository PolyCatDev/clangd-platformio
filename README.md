# Overview

Since getting LSPs to work is very finicky this repo tries to automate getting the clangd LSP working.

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

### 3. Keep It Up to Date

Every time you modify project libraries or config:

```sh
pio init --ide vim && pio run -t compiledb
```

