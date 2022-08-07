#!/bin/bash

#Linux
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o godown_linux

#Mac
CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 go build -o godown_mac_intel
CGO_ENABLED=0 GOOS=darwin GOARCH=arm64 go build -o godown_mac_arm

#Windows
CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build -o godown_win.exe

# go test -v -coverprofile=cover.out
# go tool cover -html=cover.out -o cover.html