FROM oracle/graalvm-ce:1.0.0-rc14

RUN yum -y update \
 && yum -y install \
        --setopt=tsflags=nodocs \
        --disableplugin=fastestmirror \
    epel-release \
    maven \
 && yum clean all

RUN /usr/local/bin/gu install python \
 && /usr/local/bin/gu install R \
 && /usr/local/bin/gu install ruby

WORKDIR /project
VOLUME /project
CMD /bin/bash
