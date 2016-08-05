FROM centos:7
MAINTAINER Michal Kubenka <mkubenka@gmail.com>

RUN yum update -y \
    && yum install -y \
        epel-release \
        wget \
        which \
        @Development Tools \
        git \
        rubygems \
        ruby-devel \
        ruby-json \
        gcc \
        gcc-c++ \
        python-setuptools \
        rpm-build \
        openssh-clients \
    && yum clean all

RUN gem install fpm -v '1.6.2'

RUN mkdir /tmp/fpmbuild
VOLUME ["/tmp/fpmbuild"]
WORKDIR /tmp/fpmbuild

CMD ["/bin/bash"]
