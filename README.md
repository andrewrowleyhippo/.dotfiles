
# My Dotfiles
## A selection of tools organised poorly


This repo contains the dotfiles I regularly use in development, with support via GNU Stow. With Stow, simply one can clone this repo and plug and play all these configs. In theory.

## Current toolkit

### Text editor
* Neovim - Text editor, very choice. All dependencies managed via LazyVIM:
    - alpha - splash screen
    - catpuccin - theme
    - completions - completion engine, confusing
    - git-stuff - uses vim-fugitive and gitsigns
    - lsp-config - needs more langs to be added in future
    - lualine - status bar
    - neoscroll - nicer scrolling
    - none-ls - code formatting with leader-gf
    - nvim-tree - file explorer
    - telescope - fuzzy find
    - treesitter - highlighting and stuff
    - which-key - find defns

### Terminal emulator 
* Ghostty - Modern terminal by M.Hachimoto
    - I like minimal look
    - Theme is 'Mirage'
* Starship - CLI styling
    - Here is where I style my terminal
    - Again, minimalism is the focus

### Else...
* Tmux - Terminal multiplexer
    - I like vim-style navigation
    - Also use M or Alt for Meta, and ctrl for Control
    - Hence C-Left resizes the pane in a controlled manner
    - Split with | and -
    - And the main change is my setting prefix to Ctrl-Space

