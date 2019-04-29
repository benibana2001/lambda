HELLO = 'HELLO WORLD!'
install:
	go get \
		github.com/aws/aws-lambda-go \
		github.com/aws/aws-sdk-go

run:
	go run github.com/benibana2001/lambda/cmd/lambda

build:
	GOOS=linux GOARCH=amd64 go build -o \
	github.com/benibana2001/lambda/cmd/main
	zip github.com/benibana2001/lambda/cmd/main.zip github.com/benibana2001/lambda/cmd/main