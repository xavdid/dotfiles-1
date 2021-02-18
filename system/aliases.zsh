# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

function mip()
{
  echo -e "local: $(ipconfig getifaddr en0)\npublic: $(curl -s http://checkip.dyndns.org/ | sed 's/[a-zA-Z<>/ :]//g')"
}

alias ip="curl http://ipecho.net/plain ;echo"

alias cda="cd -"

# load a .env file into local ENV
function ee()
{
    export $(cat .env)
}

# https://askubuntu.com/a/146643
alias hoist="find . -mindepth 2 -type f -exec mv {} . \;"

# usage: ng 1234
alias ng="ngrok http --subdomain xavdid"
