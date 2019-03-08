#!/usr/bin/env bash

echo "Installing GraalVM in current folder."
echo "This can take a minute..."
curl -L -s https://github.com/oracle/graal/releases/download/vm-1.0.0-rc13/graalvm-ce-1.0.0-rc13-macos-amd64.tar.gz |tar xz

