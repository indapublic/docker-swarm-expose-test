build:
	docker build -t docker-swarm-expose-test .

publish:
	docker tag docker-swarm-expose-test indapublic/docker-swarm-expose-test:latest && \
	docker push indapublic/docker-swarm-expose-test:latest && \
	docker image rm indapublic/docker-swarm-expose-test:latest && \
	docker image rm docker-swarm-expose-test
