#!/bin/bash

# alias sample to use container like command

set -x

alias elm='docker run --rm -it -v $(pwd):/home/node/app ynishi/elm elm'
alias elm-live='docker run --init --rm -it -v $(pwd):/home/node/app -p 8000:8000 ynishi/elm elm-live --host=0.0.0.0'
alias elm-reactor='docker run --init --rm -it -v $(pwd):/home/node/app -p 8000:8000 ynishi/elm elm-reactor --address=0.0.0.0'
alias elm-format='docker run --init --rm -it -v $(pwd):/home/node/app ynishi/elm elm-format'
