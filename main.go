package main

import (
	"database/sql"
	"fmt"
	"log"
	"net/http"
	"github.com/go-redis/redis"
	"github.com/gorilla/mux"
	_ "github.com/lib/pq"
)

func main() {
	r := newRouter()
	r.HandleFunc("/", r.handler)
	log.Fatal(http.ListenAndServe(":8080", r))
}

type Router struct {
	*mux.Router
	redis *redis.Client
	pg    *sql.DB
}

func newRouter() *Router {
	r := mux.NewRouter()

	redis := redis.NewClient(&redis.Options{
		Addr: "redis:6379",
	})

	pg, err := sql.Open("postgres", "host=postgres user=postgres dbname=postgres sslmode=disable")
	if err != nil {
		panic(err)
	}

	return &Router{r, redis, pg}
}

func (r *Router) handler(w http.ResponseWriter, req *http.Request) {
	var nom, date_naissance string


	n := r.redis.Incr("counter").Val()


	err := r.pg.QueryRow("SELECT nom, date_naissance FROM Animal WHERE id = $1", n%24+1).Scan(&nom, &date_naissance)
	if err != nil {
		log.Print(err)
		return
	}


	fmt.Fprintf(w, "(%v hits) - Nom Animal: %v, Date de naissance : %v", n, nom, date_naissance)
}
