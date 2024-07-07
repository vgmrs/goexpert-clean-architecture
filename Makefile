.PHONY: wire grpc gql run up down

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
