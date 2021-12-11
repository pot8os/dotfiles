# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# App Store Connect
export MATCH_PASSWORD=$(security find-generic-password -s 'Match Password' -w)
export APP_STORE_CONNECT_API_KEY_KEY_ID=$(security find-generic-password -s 'App Store Connect Key Id' -w)
export APP_STORE_CONNECT_API_KEY_ISSUER_ID=$(security find-generic-password -s 'App Store Connect Issuer Id' -w)
export APP_STORE_CONNECT_API_KEY_KEY=$(security find-generic-password -s "App Store Connect Key" -w)
export APP_STORE_CONNECT_API_KEY_IN_HOUSE=false

if [[ -d "$HOME/Developer/.flutter" ]]; then
  FLUTTER="$HOME/Developer/.flutter/bin"
  export PATH="$FLUTTER:$PATH"
fi

RB_ENV="$HOME/.rbenv/bin"
export JAVA_HOME=$(/usr/libexec/java_home -v 11)
export PATH="$JAVA_HOME:$RB_ENV:$PATH"

if [[ -d "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk" ]]; then
  source /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc
  source /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc
fi

eval "$(rbenv init -)"
