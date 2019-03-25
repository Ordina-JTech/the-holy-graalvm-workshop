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

ENV PATH /opt/graalvm-ce-1.0.0-rc14/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/rh/llvm-toolset-7/root/usr/bin

WORKDIR /project
VOLUME /project
CMD /bin/bash
