#!/usr/bin/env bash

export GRAAL_HOME=$(pwd)/graalvm-ce-1.0.0-rc13/Contents/Home
export PATH=${GRAAL_HOME}/bin:${PATH}
export JAVA_HOME=${GRAAL_HOME}