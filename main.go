package main

import (
    "fmt"
    "net/http"
)

func main() {
	http.HandleFunc("/", HelloServer)
	fmt.Println("Started...")
	http.ListenAndServe(":8080", nil)
}

// HelloServer ..
func HelloServer(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "Hello, %s!", r.URL.Path[1:])
}