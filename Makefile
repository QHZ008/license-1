default: test

deps:
	go get -v github.com/golang/lint/golint
	go get -v -d -t ./...

build: deps
	go build -o bin/license

install: deps
	go install

test: build
	./scripts/test.sh

package: deps
	./scripts/package.sh

package-docker:
	./scripts/package-docker.sh

test-docker:
	./scripts/test-docker.sh
