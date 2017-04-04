FROM alpine:3.5

# install tor
RUN apk update && \
    apk add tor && \
    rm -rf /var/cache/apk/*

# expose socks port
EXPOSE 9050

# copy in our torrc file
COPY torrc.conf /etc/tor/torrc.conf

# make sure files are owned by tor user
RUN chown -R tor /etc/tor

USER tor

ENTRYPOINT [ "tor" ]
CMD [ "-f", "/etc/tor/torrc.conf" ]
