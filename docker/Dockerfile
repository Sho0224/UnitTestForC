FROM centos

RUN yum update  -y

RUN yum install -y gcc
RUN yum install -y make

#for cpputest
RUN yum install -y git
RUN yum install -y autoconf
RUN yum install -y automake
RUN yum install -y libtool
RUN yum install -y gcc-c++

#install cpputest
RUN mkdir /tool && \
    cd /tool && \
    git clone -b v3.8 https://github.com/cpputest/cpputest.git && \
    cd cpputest && \
    ./autogen.sh && \
    ./configure && \
    make && \
    make check && \
    make install

# TODO この方法だとsshログインだと動くけどbuild.shで自動化すると動かない
# RUN echo export CPPUTEST_HOME=/tool/cpputest >> ~/.bashrc && \
#     source ~/.bashrc
    
# TODO デフォルトをc99

ADD build.sh /
ADD clean.sh /
