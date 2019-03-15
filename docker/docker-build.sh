#!/usr/bin/env bash
#deploy="false"
deploy="true"
image=graalvm
version=1.0.0-rc13
latest=true

OPTIONS="--build-arg GRAALVM_VERSION=1.0.0-rc13"

docker build ${OPTIONS} -t ivonet/${image}:${version} .
if [ "$?" -eq 0 ] && [ ${deploy} == "true" ]; then
    docker push ivonet/${image}:${version}
    if [ "$latest" == "true" ]; then
        docker tag ivonet/${image}:${version} ivonet/${image}:latest
        docker push ivonet/${image}:latest
    fi
fi