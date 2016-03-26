FROM ubuntu

MAINTAINER Bjorn Runaker <bjornrun@gmail.com>

RUN apt-get update && apt-get install -y openvpn iptables

COPY openvpn.sh /usr/bin

ENTRYPOINT ["openvpn.sh"]