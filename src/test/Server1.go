package main

import (
	"fmt"
	"io"
	"log"
	"net/http"
	"strconv"
)

func testhttp2() {
	// 设置路由

	http.HandleFunc("/", sayOne)

	// 路由注册完，开始运行

	err := http.ListenAndServe(":446", nil)

	if err != nil {

		log.Fatal(err)

	}

}

var i = 0

func sayOne(w http.ResponseWriter, r *http.Request) {
	i++
	fmt.Println("req times : ", i)
	io.WriteString(w, "server on"+strconv.Itoa(i)+"req")

}
