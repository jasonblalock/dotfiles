# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if command -v gls >/dev/null 2>&1; then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

if type "xclip" > /dev/null 2>&1; then
  alias pbcopy="xclip -selection clipboard"
  alias pbpaste="xclip -selection clipboard -o"
fi
