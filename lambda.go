package lambda

import (
	"fmt"
	"github.com/aws/aws-lambda-go/lambda"
)

type Event struct {
	Username string
}

func handler(e Event)(string, error){
	return fmt.Sprintf("<h1>Hello %s from Lambda Go</h1>", e.Username), nil
}

func Lambda(){
	lambda.Start(handler)
}
