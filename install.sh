#!/bin/bash
echo "=> symlinking zsh and prezto files..."
[ -e ~/.zprezto ] && echo "-: ~/.zprezto already exists!" || echo "-: \
creating symlink ~/.zprezto, pointing to$PWD/prezto" && ln -s $PWD/prezto \
~/.zprezto
for i in prezto/runcoms/z*
do
  [ -e ~/.$(basename $i) ] && echo "-: ~/.$(basename $i) already exists" || \
  echo "-: creating symlink ~/.$(basename $i), pointing to $PWD/$i" && ln -s \
  $PWD/$i ~/.$(basename $i)
done
