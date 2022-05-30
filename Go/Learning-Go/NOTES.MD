# Learning Go Notes

## Chapter 1
Installing Go

1. MacOS: `brew install go`
2. Windows: `choco install golang`
3. Linux: ```tar -C /usr/local/ -xzf go1.18.2.linux-amd64.tar.gz```
```echo 'export PATH=$PATH:/usr/local/go/bin' >> $HOME/.profile```
```source $HOME/.profile```

* Go programs compile to a single binary and do not require any additional software to be installed in order to run them.

go version
`go version go1.18.2 darwin/arm64`

go path
`export GOPATH=$HOME/go`
`export PATH=$PATH:$GOPATH/bin`

Modern Go Development Rules: 
1. Organize your projects as you see fit
2. Go expects there to be a single workspace for third-party Go tools installed via go install. This is by default located in $HOME/go and the source code for these tools are stored in $HOME/go/src and the compiled binaries in $HOME/go/bin. All of these can be specified by setting the $GOPATH environment variable.

2 Go Commands
1. go run - builds a binary in a temporary directory
2. go build - builds the binary; you can also use `go run -o hello_world hello.go`

Go Third Party Tools
Go doesn't rely on centarlly hosted service, but use share projects via source code repositories.
`go install github.com/rakyll/hey@latest`
`/$HOME/go/bin/hey https://golang.org`
