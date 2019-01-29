FROM alpine:3.8
RUN apk update && apk add git git-fast-import python3 openssh-client
RUN pip3 install ghp-import mkdocs
RUN mkdir ~/.ssh && chmod 700 ~/.ssh
COPY ./config /root/.ssh/config
COPY ./push.sh /root/push.sh
CMD ["ash", "/root/push.sh"]
