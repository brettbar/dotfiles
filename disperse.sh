#!/bin/sh
cp $HOME/dotfiles/alacritty/alacritty.yml   $HOME/.config/alacritty/alacritty.yml 
cp $HOME/dotfiles/i3/config                 $HOME/.config/i3/config               
cp $HOME/dotfiles/lvim/config.lua           $HOME/.config/lvim/config.lua         
cp $HOME/dotfiles/polybar/config            $HOME/.config/polybar/config          
cp $HOME/dotfiles/polybar/launch.sh         $HOME/.config/polybar/launch.sh       
cp $HOME/dotfiles/tmuxinator/*              $HOME/.config/tmuxinator/ -r
                                                                                  
cp $HOME/dotfiles/scripts/*                 $HOME/scripts/*                       
cp $HOME/dotfiles/tmux/.tmux.conf           $HOME/.tmux.conf                      
cp $HOME/dotfiles/scripts/.bashrc           $HOME/.bashrc                         
