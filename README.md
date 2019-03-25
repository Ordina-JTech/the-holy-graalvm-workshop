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

# GraalVM Workshop docker image

A fully configured GraalVM Docker image has been made for this workshop to play around with.

you can run it with the following command:

```bash
docker run -it --rm --name graalvm -v $(pwd):/project -v ${HOME}/.m2:/root/.m2 ivonet/graalvm:1.0.0-rc14
``` 

- Runs the GraalVM image in interactive terminal mode
- Names it `graalvm`
- Mounts the current folder into the `/project` folder of the container (which is the working dir)
- Mounts the maven config dir into the container maven config dir
- Removes itself (`--rm`) when closed (remove this if you want to save the state)

The command can of course be adjusted to your needs :-)
