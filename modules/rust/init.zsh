#
# Enables local rust installation.
#

# Return if requirements are not found.
if [[ ! -d "$HOME/.cargo" ]]; then
  return 1
fi

# Prepend rustup cargo bin to path
path=($HOME/.cargo/bin $path)

# FIXME: Load any completions for rust related
# source "$HOME/.cask/etc/cask_completion.zsh" 2> /dev/null

# Used by racer - https://github.com/racer-rust/racer#configuration
if  [[ -d /usr/local/src/rust/src ]] ; then
  export RUST_SRC_PATH=/usr/local/src/rust/src
fi

if  [[ -d "$(rustc --print sysroot)/lib/rustlib/src/rust/src" ]] ; then
  export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
fi
