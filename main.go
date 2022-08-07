package main

import (
	"flag"
	"fmt"
	"net/http"

	"github.com/gin-gonic/gin"
)

var cliPath string
var cliPort int

func init() {
	flag.IntVar(&cliPort, "port", 8080, "Bind Port")
	flag.StringVar(&cliPath, "path", "./", "Download Dir Path")
}

func main() {
	flag.Parse()

	router := gin.Default()
	router.StaticFS("/", http.Dir(cliPath))

	router.Run(":" + fmt.Sprintf("%d", cliPort))
}
