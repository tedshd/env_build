#!/bin/bash

# vue

if [ -z $1 ]
    then
    echo not set project name
    exit
fi

if [ -x "$(command -v vue)" ]
    then
    echo vue-cli exists
else
    echo vue-cli does not exist
    npm install -g vue-cli
fi

vue init webpack $1

cd $1

npm install

npm run dev

# npm install -g vue-cli
# vue init webpack my-project
# cd my-project
# npm install
# npm run dev