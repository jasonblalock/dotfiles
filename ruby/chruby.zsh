config="/usr/local/share/chruby/chruby.sh"
auto="/usr/local/share/chruby/auto.sh"

if [ -f $config ]; then
  source $config
  if [ -f $auto ]; then
    source $auto
  fi
fi
