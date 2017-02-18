IMAGE=jmutai/mpsyt

.PHONY: all build

all: build

build:
	docker build --rm -t $(IMAGE) .
