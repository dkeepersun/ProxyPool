#!/bin/sh

curdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export GOPATH=$curdir/vendor:$curdir/programs

cd $curdir

#go install -v -ldflags "-w -s" server/worker/main.go

echo '###### building Mac App ... ...'
GOPATH=$curdir/vendor:$curdir/programs CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 go build -o $curdir/programs/bin/proxypool_mac $curdir/programs/src/main.go

#echo '###### building Linux App ... ...'
#CGO_ENABLED=0
#GOOS=linux
#GOARCH=amd64
#go build -o linux_goworker  server/worker/main.go

echo '###### building Linux App ... ...'
GOPATH=$curdir/vendor:$curdir/programs CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o $curdir/programs/bin/proxypool_linux $curdir/programs/src/main.go

#
#echo '###### building Windows App ... ...'
#CGO_ENABLED=0
#GOOS=windows
#GOARCH=amd64
#go build -o goworker.exe  server/worker/main.go

echo '###### building Windows App ... ...'
GOPATH=$curdir/vendor:$curdir/programs CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build -o $curdir/programs/bin/proxypool_linux $curdir/programs/src/main.go
