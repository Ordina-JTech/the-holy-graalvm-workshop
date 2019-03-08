# the-holy-graalvm-workshop

Workshop for The Holy GraalVM Meetup


## Prerequisites

* Docker
* [GraalVM](http://www.graalvm.org/docs/getting-started/)
* XCode CLI tools -> `xcode-select --install`

## Setup

### macOs

* run `mac-graalvm-ce.sh`
* run `source ./env.sh` in a terminal session
* this terminal session should now be ready for Graal commands

### Other OSs

* Download and install GraalVM from the site (prerequisites)
* set JAVA_HOME to `<project_path>/graalvm-ce-1.0.0-rc13/Contents/Home`
* set PATH to `<project_path>/graalvm-ce-1.0.0-rc13/Contents/Home/bin:$PATH`

### IntelliJ

* Add GraalVM as a JDK.
* Add the following file to the GraalVM Classpath: `jre/lib/boot/graal-sdk.jar`

# Workshop 

## Polyglot example

TODO

## Native example

TODO

## Be