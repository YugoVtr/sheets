.PHONY: run

default: run

run:
	@docker-compose up -d
	@sleep 5
	@docker-compose logs jupyter | grep -Eo "(http|https)(://127.0.0.1)(.*)" | uniq

stop:
	@docker-compose down -v
