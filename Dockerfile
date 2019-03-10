FROM ubuntu:18.04

ARG GRAALVM_VERSION

RUN apt-get update && \
  apt-get install -y curl maven && \
  curl -Ls "https://github.com/oracle/graal/releases/download/vm-${GRAALVM_VERSION}/graalvm-ce-${GRAALVM_VERSION}-linux-amd64.tar.gz" | \
  tar zx -C /usr/local/

RUN rm -f /usr/local/graalvm-ce-${GRAALVM_VERSION}/src.zip && \
  ln -s /usr/local/graalvm-ce-${GRAALVM_VERSION} /usr/local/graalvm && \
  rm -fr /var/lib/apt

RUN /usr/local/graalvm/bin/gu install python \
 && /usr/local/graalvm/bin/gu install R \
 && /usr/local/graalvm/bin/gu install ruby

ENV PATH /usr/local/graalvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

WORKDIR /project
VOLUME /project
CMD /bin/bash