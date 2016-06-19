nvm="$HOME/.nvm"

if [ -d $nvm ]; then
  export NVM_DIR=$nvm
  if [ -s "$NVM_DIR/nvm.sh" ]; then
    . "$NVM_DIR/nvm.sh" # This loads nvm
    
    # place this after nvm initialization!
    autoload -U add-zsh-hook
    load-nvmrc() {
      if [[ -f .nvmrc && -r .nvmrc ]]; then
        nvm use
      elif [[ $(nvm version) != $(nvm version default)  ]]; then
        echo "Reverting to nvm default version"
        nvm use default
      fi
    }
    add-zsh-hook chpwd load-nvmrc
    load-nvmrc
  fi
fi
