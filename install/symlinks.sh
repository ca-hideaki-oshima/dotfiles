# zsh with prezto
ln -snf "$BASEDIR"/zprezto "$HOME"/.zprezto
ln -snf "$HOME"/.dotfiles/zsh/runcoms/.zlogin "$HOME"/.zlogin
ln -snf "$HOME"/.dotfiles/zsh/runcoms/.zlogout "$HOME"/.zlogout
ln -snf "$HOME"/.dotfiles/zsh/runcoms/.zpreztorc "$HOME"/.zpreztorc
ln -snf "$HOME"/.dotfiles/zsh/runcoms/.zprofile "$HOME"/.zprofile
ln -snf "$HOME"/.dotfiles/zsh/runcoms/.zshenv "$HOME"/.zshenv
ln -snf "$HOME"/.dotfiles/zsh/runcoms/.zshrc "$HOME"/.zshrc

# zsh
# ln -snf "$ZDOTDIR" "$HOME"/.zsh

#neovim
ln -snf "$BASEDIR"/nvim/dein.toml "$HOME"/.config/nvim/dein.toml
ln -snf "$BASEDIR"/nvim/dein_lazy.toml "$HOME"/.config/nvim/dein_lazy.toml
ln -snf "$BASEDIR"/nvim/init.vim "$HOME"/.config/nvim/init.vim

# tmux
ln -snf "$BASEDIR"/tmux.conf
