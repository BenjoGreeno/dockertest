FROM alpine:latest 

ARG USER

RUN set -x                            && \
    apk add --no-cache                   \
        python3                           \
        groff                            \
        less                             \
        py-pip                        && \
    pip --no-cache-dir install awscli && \
    apk del py-pip

RUN adduser -D ${USER}

WORKDIR /home/$USER
#test blah blah
USER $USER

CMD ["help"]
ENTRYPOINT ["aws"]

