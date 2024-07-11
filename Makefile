.PHONY: install-proto install-grpc install-wire install-evans wire grpc gql run up down

install-proto:
	@apt install -y protobuf-compiler
	@protoc --version

install-grpc:
	@go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.28
	@go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2

install-wire:
	@go install github.com/google/wire/cmd/wire@latest

install-evans:
	@go install github.com/ktr0731/evans@latest

wire:
	@cd cmd/ordersystem && wire

grpc:
	@protoc --go_out=. \
		--go-grpc_out=. \
		internal/infra/grpc/protofiles/order.proto

gql:
	@go run github.com/99designs/gqlgen generate

up:
	@docker compose up -d

down:
	@docker compose down

run:
	@go run -C cmd/ordersystem main.go wire_gen.go

evans:
	@evans -r repl

test:
	@go test ./...
