# My vimrc file

## vimrc.basic
no plugin

## vimrc.plugin
Install plugins with [Plug](https://github.com/junegunn/vim-plug)

To enable functions on python:
```
# Install pyright
pip install pyright 
```

Configure ALE 
```
cat << EOF > ~/.vim/ftplugin/python.vim
let b:ale_linters = ['pyright']
EOF
```
