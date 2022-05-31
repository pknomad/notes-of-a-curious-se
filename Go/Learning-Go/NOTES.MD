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

As of Go 1.18, setting GOROOT is no longer necessary and GOPATH is automatically defaulted to $HOME/go

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

Formatting
Use tabs for indents
Opening curly braces must be in the same line as the declaration or command that begins the block

`go install golang.org/x/tools/cmd/goimports@latest`
`goimports -l -w .`

Semi-colon rule

### Linting and Vetting
1. Lint (golint is deprecated, use golangci-lint instead) - Ensure code follows guidelines and style
go install github.com/golangci/golangci-lint/cmd/golangci-lint@v
2. Vet 

## Chapter 2
Built in types
1. Booleans
2. Integers
3. Floats
4. Strings

Zero Value - Go assigns a default zero value to any variable that is declared but not assigned a value

Literals - Writing out a number, character, or string. There are 5 types of literals, 4 common and 1 uncommon

Integer Literals, normally base 10, but different prefixes are used to indicate other bases
0b - binary
0o - octal (0_ as in just "0" is implicit octal, but don't use it to avoid confusion)
0x - hexadecimal

Go allows "_" between numbers for readability. Can only be between numbers, not in the front or back of the integer literal or be next to each other.

Floating Point Literals. Same as integer literals except 0p stands for exponentiation

Rune literals - represents characters and are surrounded by single quotes. '' and "" are not interchangeable. Rune literals can be written as single Unicode characters ('a'), 8-bit octal numbers ('\141
'), 8-bit hexadecimal numbers ('\x61'), or 16-bit, exadecimals numbers ('\u0061'), or 32-bit unicode numbers ('\U00000061'). Other utilities like newline ('\n'), tab ('\t'), single quote ('\''), double quote ('\"'), and backslash ('\\') exist. 

Generally base 10 should be used but other base forms can be used if situation warrants such as:
hexadecimal for ipv6, octal for POSIX permission flag

Two ways to indicate string literals
Interpreted string literal "Greetings and Salutations" - contain 0 or more rune literals in any forms, the only charadcters that cannot appear are unescaped backslahes, newlines, and double quotes.

"Greetings and \n\"Salutations\""

Raw string literal - if you want to include all the literal characters except a backquote
* Literals in Go are untyped

Booleans
True or False, defaults to false

Numeric types
12 different types
provides both unsigned and signed integers from 1 to 8 bytes.

int8 -128 to 127
int16 -32768 to 32767
int32 -2147483648 to 2147483647
int64 -9223372036854775808 to 9223372036854775807
uint 0 to 255
uint16 0 to 65535
uint32 0 to 4294967295
uint64 0 to 18446744073709551615

zero value for all integer type is 0.

Integer literals default to being of int type

Special integer types
uint8 = byte
int
uint unsigned integer
rune
uintptr

3 simple rules to follow for deciding which type to use
1. Working with binary file format or network protocol that has an integer of a specific size or sign, use the corresponding integer type
2. If you are writing a library function that should work with any integer type, write a pair of functions, one with int64 for the parameters and variables and the other with uint64. (Go now has generics so this will change)
3. In all other cases, use int

Integer Operators
+, -, *, /, %

operators can be combined +=, -=, *=, /=, %=

Comparison Operators
==, !=, >, >=, <, <=

Bit-manipulation operators
<<, >>, & (and), | (or), ^ (xor), &^ (nand)

Floating types
float32
float64
floats cannot reprecent a decimal value exactly

Complex types
complex64, float32
complex128, float64

String types
empty string = default zero type

Strings in Go are immutable

rune is an alias for int32 type

Variable declaration
Verbose
var x int = 10

Implicit type
var x = 10

Zero value
var x int

Multiple variable declaration
var x, y int = 10, 20 

Multiple variable, 0 value
var x, y int

Multiple variable types
var x, y = 10, "hello"

Short declaration
var x = 10
x := 10

var x, y = 10, "hello"
x, y := 10, "hello"

:= is the common delaration.

1. When initializing a variable to its zero value, use var x int (because it looks like zero value is intended)
2. When assigning an untyped constant or a literal to a variable and the default type for the constant or literal isn't the type you want for the variable, use the long var form with the type specified.
3. Because := allows you to assign to both new and existing variables, it sometimes creates new variables when you think you are using existing ones. Explicitly declare all of your new variables with var to make it clear which variables are new and then use the assignment operator assign values to both new and old variables.

Const type
Declaring an immutable value in Go is achieved through const.

Unused variables
Compiler and go vet do not catch unused assignmens, golangci-lint detects it. Go compiler won't stop you from creating unread package-level variables. This is one of the reason why you should avoid creating package-level variables.

Variable Naming Convention

Go uses camelcase (camelCase) instead of snakecase (snake_case) for variable names 
_ is a special identifier in Go
* Go uses the first letter in the name of a package-level declration to determine if the item is accessible outside the package.

