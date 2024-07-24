# .dotfiles
Config and dotfiles made to be used with GNU stow

## Installing dependencies with yay:
```bash
yay -S --needed - < dependencies
```

## Applying configurations
```bash
stow --target=/home/$USER/ [packages]
```

## Configured programs:
- fish
- nvim
- kitty

### TODO:

Add:
- i3/sway
- tmux
- use `--dotfiles` with stow


