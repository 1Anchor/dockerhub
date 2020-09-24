FROM alpine

RUN apk add npm && npm i -g http-server

VOLUME /home/user/dock

WORKDIR /home/user/dock

COPY ./ /home/user/dock/

EXPOSE 8080

CMD http-server
