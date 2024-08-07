# goexpert-clean-architecture
Exercise Clean Architecture for postgraduate Go Expert

## Description

This application implements Clean Architecture structure in Golang, and offers a Order API available in REST, gRPC, GraphQL and RabbitMQ.

## Protocol Ports

| Protocol | Ports |
|----------|-------|
|   HTTP   |  8000 |
|   gRPC   | 50051 |
|  GraphQL |  8080 |

## How to install

1 - Install project dependencies:
```bash
go mod tidy
```

2 - Install Protocol Buffers dependencies:
```bash
make install-proto
```

3 - Install gRPC dependencies:
```bash
make install-grpc
```

4 - Install Google Wire dependencies:
```bash
make install-wire
```

5 - Install Evans dependencies:
```bash
make install-evans
```

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
