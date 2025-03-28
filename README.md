## dotfiles

Repository with dotfiles managed with `Stow` as packages

### Available packages
* dotnet (editorconfig for C#)
* zsh (terminal and `nnn` configuration)
* nvim
* vim
* skhd

### Stow a package
We can stow package to `~` dir 
```
stow -S -t ~ <package>
```
`-S` - stow aka unpack

`-t` - target dir (where to unpack)

### Add new package

Create a package folder. And, if needed, recreate a folder/file structure to match existing one

Than adopt existing file/files
```
stow --adopt -v -t ~ <package>
```

