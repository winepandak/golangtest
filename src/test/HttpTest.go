package main

import (
	"fmt"
	"github.com/ant0ine/go-json-rest/rest"
	"log"
	"net/http"
)

func testHttpHost() {
	pathExp := "/newmessage"
	prefix := "/api"
	addr := ":445"

	fmt.Println("http://localhost" + addr + prefix + pathExp)
	api := rest.NewApi()
	api.Use(rest.DefaultDevStack...)
	router, err := rest.MakeRouter(
		rest.Get(pathExp, func(w rest.ResponseWriter, req *rest.Request) {
			w.WriteJson(map[string]string{"Body": "my first golang message is “my name is kervan L”"})
		}),
	)
	if err != nil {
		log.Fatal(err)
	}
	api.SetApp(router)
	http.Handle("/api/", http.StripPrefix(prefix, api.MakeHandler()))
	log.Fatal(http.ListenAndServe(addr, nil))
	/*
	* 地址 http://localhost:8080/api/message 即 localhost + addr + prefix +pathExp
	 */

}
