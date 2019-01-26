FROM alpine:3.8
RUN apk update && apk add git git-fast-import python3 openssh-client
RUN pip3 install ghp-import
RUN wget https://github.com/gohugoio/hugo/releases/download/v0.53/hugo_0.53_Linux-64bit.tar.gz -P /tmp && tar zfx /tmp/hugo_0.53_Linux-64bit.tar.gz && mv ./hugo /usr/local/bin
RUN mkdir ~/.ssh && chmod 700 ~/.ssh
COPY ./config /root/.ssh/config
COPY ./push.sh /root/push.sh
CMD ["ash", "/root/push.sh"]
