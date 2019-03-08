#!/usr/bin/env bash

export GRAALVM_HOME=$(pwd)/graalvm-ce-1.0.0-rc13/Contents/Home
export PATH=${GRAALVM_HOME}/bin:${PATH}
export JAVA_HOME=${GRAALVM_HOME}