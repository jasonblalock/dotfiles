NVM_SOURCE=~/.nvm/nvm.sh

lazy_source () {
  eval "$1 () { [ -f $2 ] && source $2 && $1 \$@ }"
}

if [ -s $NVM_SOURCE ]; then
  lazy_source nvm $NVM_SOURCE

  function node {
    NODE_PATH="$(dirname `nvm which default`)"
    export PATH=$NODE_PATH:$PATH
    unset -f node
    node $@
  }

  # clis that depend on nvm being active
  clis=(npm yarn bundle code)
  for cli in ${clis[@]}; do
    alias $cli="node --version >/dev/null; $cli $@"
  done
fi
