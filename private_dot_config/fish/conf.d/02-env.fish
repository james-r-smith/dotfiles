# default programs
set -gx EDITOR nvim
set -gx PAGER less

# go config
set -gx GOPATH $XDG_DATA_HOME/go
set -gx GOROOT /usr/local/opt/go/libexec

# rust config
set -gx RUSTUP_HOME $XDG_DATA_HOME/rustup
set -gx CARGO_HOME $XDG_DATA_HOME/cargo

# npm config
set -gx NPM_CONFIG_USERCONFIG $XDG_CONFIG_HOME/npm/npmrc

# vim config
set -gx VIMINIT 'let $MYVIMRC="$HOME/.config/vim/vimrc" | source $MYVIMRC'

# docker config
set -gx DOCKER_CONFIG $XDG_CONFIG_HOME/docker

# kubernetes config
set -gx KUBECONFIG $XDG_CONFIG_HOME/kube/config

# path config
set -gx PATH "$HOME/.local/bin:\
$CARGO_HOME/bin:\
$GOPATH/bin:\
$PATH"