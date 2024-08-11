# Overview

This is my slightly updated version of settings for NeoVim Rust IDE with Catpuccin theme.
## Packages:
- [NVChad](https://nvchad.com)
- [Catpuccin](https://github.com/catppuccin/nvim)
- [Mason](https://github.com/williamboman/mason.nvim)
- [Lsp-config](https://github.com/neovim/nvim-lspconfig)
- [rustaceanvim](https://github.com/mrcjkb/rustaceanvim)
- [nvim-dap](https://github.com/mfussenegger/nvim-dap)
- [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)

Other packages are required by listed above

# Install

To install run `git clone https://github.com/gonardfreeman/rust-nvim-config.git ~/.config/nvim && nvim`

# Key maps

`<Leader>` means in normal mode you need to hit space and wait until menu will be opened

## RustLsp

- `<Leader>rr` - run runnables. Same as `:RustLsp runnables`. Build and run your code
- `<Leader>rp` - run previous run.
- `<Leader>rd` - run debuggables. Same as `:RustLsp debuggables`. Build and debug your code
- `<Leader>rc` - open `Cargo.toml`

## Debug

- `<F8>` - continue execution
- `<F9>` - step into
- `<F10>` - step over
- `<Leader>db` - toggle breakpoint
- `<Leader>dB` - set breakpoint
- `<Leader>duo` - open dap ui

## Gitsigns

- `<Leader>gj` - next hunk
- `<Leader>gk` - prev hunk
- `<Leader>gs` - stage hunk
- `<Leader>gp` - preview hunk
- `<Leader>gu` - undo stage hunk

# nvim-dap

In order to setup dap you need [lldb](https://lldb.llvm.org) debugger on your system. 
Installation may vary from OS to OS, for example in mac 
you need to use [brew](https://formulae.brew.sh/formula/llvm),
but for all systems you need to add it to PATH variable separately. Even if it works W/O adding it (at least it helped me). 
