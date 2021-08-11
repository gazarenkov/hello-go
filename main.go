package main

import (
    "fmt"
    "net/http"
)

func main() {
	http.HandleFunc("/", HelloServer)
	fmt.Println("Starting...")
	http.ListenAndServe(":8080", nil)
}

// HelloServer ..
func HelloServer(w http.ResponseWriter, r *http.Request) {
	// hello from GoLand
    fmt.Fprintf(w, "Hello, %s!", r.URL.Path[1:])
}