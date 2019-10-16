package main

import (
	"io"
	"log"
	"net/http"
)

func testhttp2() {
	// 设置路由

	http.HandleFunc("/", sayOne)

	// 路由注册完，开始运行

	err := http.ListenAndServe(":445", nil)

	if err != nil {

		log.Fatal(err)

	}

}

func sayOne(w http.ResponseWriter, r *http.Request) {

	io.WriteString(w, "this is version 1")

}
