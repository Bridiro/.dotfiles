# My .dotfiles!

This repository contains my personal configuration files (dotfiles) for various applications and tools I use.

## Contents
- `zsh/` - Configuration files for Zsh shell
- `nvim/` - Configuration files for Neovim editor

## Installation
I personally use GNU Stow to manage my dotfiles. To set up the dotfiles on a new system, follow these steps:
1. Clone the repository:
   ```bash
   git clone https://github.com/Bridiro/.dotfiles.git ~/.dotfiles
   ```

2. Navigate to the dotfiles directory:
   ```bash
    cd ~/.dotfiles
    ```

3. Use Stow to create symlinks for the desired configurations.
    ```bash
    stow zsh
    stow nvim
    ```
