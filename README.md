# goexpert-clean-architecture
Exercise Clean Architecture for postgraduate Go Expert

## Description

Criar o usecase de listagem das orders.
Esta listagem precisa ser feita com:
- Endpoint REST (GET /order)
- Service ListOrders com GRPC
- Query ListOrders GraphQL
Não esqueça de criar as migrações necessárias e o arquivo api.http com a request para criar e listar as orders.

Para a criação do banco de dados, utilize o Docker (Dockerfile / docker-compose.yaml), com isso ao rodar o comando docker compose up tudo deverá subir, preparando o banco de dados.
Inclua um README.md com os passos a serem executados no desafio e a porta em que a aplicação deverá responder em cada serviço.

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
