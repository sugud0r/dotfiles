export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=$(which vim)
export VISUAL=$EDITOR
export SUDO_EDITOR=$EDITOR
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export BROWSER=$(which chromium)
export PATH=$PATH:${HOME}/.config/composer/vendor/bin:${HOME}/.gem/ruby/2.7.0/bin:${HOME}/bin
export PATH=$HOME/.rbenv/bin:$PATH

export PATH="$HOME/.cargo/bin:$PATH"

eval "$(rbenv init -)"
eval $(ssh-agent)

gpg-agent --daemon 2>&1 >/dev/null
