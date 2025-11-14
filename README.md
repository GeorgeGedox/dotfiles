# Dotfiles

This repository contains configuration files managed with [chezmoi](https://www.chezmoi.io/).

## Quick setup for fresh machine
`sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply GeorgeGedox`

## Usage

1. Install chezmoi:
  ```sh
  sh -c "$(curl -fsLS get.chezmoi.io)"
  ```
2. Initialize your dotfiles:
  ```sh
  chezmoi init GeorgeGedox
  chezmoi apply
  ```

See individual files for details.
