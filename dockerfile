FROM ubuntu:20.04

WORKDIR /golang_dev

ENV TZ=Asia/Taipei
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update
RUN apt-get install -y golang-go

CMD [ "tail", "-f", "/dev/null" ]