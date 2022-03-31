#!/bin/sh

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        ./bazelisk-linux "$@"
elif [[ "$OSTYPE" == "darwin"* ]]; then
        ./bazelisk-darwin "$@"
fi