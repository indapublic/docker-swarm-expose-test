RUN_ARGS := $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))
$(eval $(RUN_ARGS):;@:)

build:
	docker build -t docker-swarm-expose-test .

publish:
	docker tag docker-swarm-expose-test indapublic/docker-swarm-expose-test:$(RUN_ARGS) && \
	docker push indapublic/docker-swarm-expose-test:$(RUN_ARGS) && \
	docker image rm indapublic/docker-swarm-expose-test:$(RUN_ARGS) && \
	docker image rm docker-swarm-expose-test

deploy:
	docker stack deploy --with-registry-auth -c stack.yaml docker-swarm-expose-test
