**This repo is supposed to used as config by NvChad users!**

- The main nvchad repo (NvChad/NvChad) is used as a plugin by this repo.
- So you just import its modules , like `require "nvchad.options" , require "nvchad.mappings"`
- So you can delete the .git from this repo ( when you clone it locally ) or fork it :)

## Setup instructions

1. Follow the instructions here but use `https://github.com/tagpro/nvchad-neovim-starter` url for git clone.
For example
```
# Linux/MacOS
git clone ~https://github.com/tagpro/nvchad-neovim-starter /.config/nvim
```
2. After you have cloned, make sure you have all the languages installed in `lua/configs/lspconfig.lua` in the variable servers. Comment the lines using `--` if they are not installed.
3. Run `nvim` in the terminal and wait for initial setup to finish. 
4. Run `:MasonInstallAll` inside nvim by pressing `:` key and paste `MasonInstallAll`. This will install all the language servers you have not commented out.

## Useful links

- [NvChad](https://nvchad.com/docs/quickstart/install)
- [Learn Neovim](https://ofirgall.github.io/learn-nvim/chapters/00-why-should-i-learn.html)
