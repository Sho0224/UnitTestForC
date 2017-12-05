FROM centos

RUN yum install -y gcc
RUN yum install -y make

ADD build.sh /

ENTRYPOINT ["/build.sh"]
