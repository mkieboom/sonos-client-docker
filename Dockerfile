# Sonos Controller (SoCo) in docker
#
# VERSION 0.1 - not for production, use at own risk
#

FROM alpine

RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
    openssh \
  && pip install soco \
  && rm -rf /var/cache/apk/*

RUN ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa && \
    ssh-keygen -f /etc/ssh/ssh_host_dsa_key -N '' -t dsa && \
    echo -e "martijn\nmartijn\n" | adduser martijn

ADD ./play.py /play.py
RUN chown martijn:martijn /play.py

EXPOSE 22
CMD ["/usr/sbin/sshd","-D"]
