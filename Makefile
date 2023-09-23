DB_URL=postgresql://root:secret@localhost:5432/simple_bank?sslmode=disable

postgres:
	docker run --name simplebank-postgres-1 -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=secret -d postgres

createdb:
	docker exec -it simplebank-postgres-1 createdb --username=root --owner=root simple_bank

dropdb:
	docker exec -it simplebank-postgres-1 dropdb simple_bank

.PHONY: postgres createdb dropdb	