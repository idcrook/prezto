#
# Enables local rust installation.
#

# Return if requirements are not found.
if [[ ! -d "$HOME/.cargo" ]]; then
  return 1
fi

# Prepend rustup cargo bin to path
path=($HOME/.cargo/bin $path)


# # Load Carton completion
# source "$HOME/.cask/etc/cask_completion.zsh" 2> /dev/null

if  [[ -d /usr/local/src/rust/src ]] ; then
  export RUST_SRC_PATH=/usr/local/src/rust/src
fi
