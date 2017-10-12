#!/usr/bin/env bash

curdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export GOPATH=$curdir/vendor:$curdir/programs

cd $curdir

go get gopkg.in/mgo.v2
go get github.com/PuerkitoBio/goquery
go get github.com/parnurzeal/gorequest
go get github.com/nladuo/go-phantomjs-fetcher