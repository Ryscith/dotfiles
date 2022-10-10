Dotfiles
--------
These are all of my configuration files that I want to take from distro to distro with me without re-writing them.

Commands To Install
-------------------
```
git init --bare $HOME/Repos/dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/Repos/dotfiles --work-tree=$HOME' # Goes into .bashrc
dotfiles config --local status.showUntrackedFiles no
```
