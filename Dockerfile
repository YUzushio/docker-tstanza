FROM ubuntu:14.04
MAINTAINER Yuki Ushioda "byr.wgp.jg.cg.1229@gmail.com"
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y \
	make \
	git \
	wget \
	man
RUN ln -s /usr/bin/vi /usr/bin/vim

RUN mkdir /setup
WORKDIR /setup
ADD ./setup.sh /setup/setup.sh
RUN chmod a+x /setup/setup.sh

CMD ["/setup/setup.sh"]

