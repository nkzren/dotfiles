if [ ! -z $(command -v go) ]; then
    export PATH=$PATH:$(go env GOPATH)/bin
fi
