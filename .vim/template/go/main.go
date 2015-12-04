package main

import (
	"log"
	"time"
)

func main() {
	log.SetPrefix(time.Now().String())
	log.Println("hello world")
}
