tag:
	git tag -a v$(version) -m "Version $(version)"

deploy:
	docker-compose -f production.yml build
	docker-compose -f production.yml down
	docker-compose -f production.yml up -d
