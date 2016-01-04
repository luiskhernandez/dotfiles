#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="vimrc.before.local vimrc.bundles.local vimrc.local zshrc tmux.conf"    # list of files/folders to symlink in homedir
files_in_vim_folder="UltiSnips plugin after"
###########
create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
  if [ -f ~/.$file ] || [ -d ~/.$file ]
  then
    echo "Moving any existing $file dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
  fi
  echo "Creating symlink to $file in home directory."
  ln -s $dir/$file ~/.$file
done

curl http://j.mp/spf13-vim3 -L -o - | sh
echo "-----------------------------------------------------"
cd ~/.vim
for file in $files_in_vim_folder; do
  echo "Creating symlink to $file in home directory."
  ln -s $dir/$file ~/.vim/$file
done
