##
# Nave
#
# @file
# @version 0.1

sandbox:
	docker build \
		-t nave-sandbox \
		-f Dockerfile.sandbox \
		.
run-tests:
	docker run --rm -it \
		-v ${PWD}:/work \
		-w /work \
		--user $(shell id -u):$(shell id -g) \
		-e HOME=/tmp nave-sandbox \
		bash test/run.sh

# end
