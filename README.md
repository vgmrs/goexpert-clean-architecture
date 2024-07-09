# goexpert-clean-architecture
Exercise Clean Architecture for postgraduate Go Expert

## Description

TODO:
- Generate Wire
- Service ListOrders com GRPC
- Query ListOrders GraphQL

## Protocol Ports

| Protocol | Ports |
|----------|-------|
|   HTTP   |  8000 |
|   gRPC   | 50051 |
|  GraphQL |  8080 |

## How to run

### To execute project

Start environment:
```bash
make up
```
or
```bash
docker compose up -d
```

Wait 10 seconds, then execute application:
```bash
make run
```
or
```bash
go run -C cmd/ordersystem main.go wire_gen.go
```
> If application does not run, wait another 5 seconds and try again

### To turn off the environment run:
Execute:
```bash
make down
```
or
```
docker compose down
```
