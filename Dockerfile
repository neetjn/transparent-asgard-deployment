FROM ubuntu:xenial
LABEL authors="John Nolette <john@neetgroup.net>"

ADD setup.sh /setup.sh

RUN chmod 755 /setup.sh
RUN sh setup.sh
