package main

//go:generate ./run-migrations.sh run go generate ./... | run go generate 
//go:generate sqlc generate -f ./internal/pgstore/sqlc.yaml 
