#!/bin/sh
cp $HOME/.config/alacritty/alacritty.yml    $HOME/dotfiles/alacritty/alacritty.yml
cp $HOME/.config/i3/config                  $HOME/dotfiles/i3/config
cp $HOME/.config/lvim/config.lua            $HOME/dotfiles/lvim/config.lua
cp $HOME/.config/polybar/config             $HOME/dotfiles/polybar/config
cp $HOME/.config/polybar/launch.sh          $HOME/dotfiles/polybar/launch.sh
cp $HOME/.config/tmuxinator/*               $HOME/dotfiles/tmuxinator/ -r

cp $HOME/scripts/*                          $HOME/dotfiles/scripts/ -r 
cp $HOME/.tmux.conf                         $HOME/dotfiles/tmux/.tmux.conf
cp $HOME/.bashrc                            $HOME/dotfiles/scripts/.bashrc
cp $HOME/notes/.obsidian/snippets/font.css  $HOME/dotfiles/obsidian/font.css
