FROM alpine
RUN apk --update --no-cache add dnsmasq
COPY consul.conf /etc/dnsmasq.d/consul.conf
ENTRYPOINT ["/usr/sbin/dnsmasq"]
CMD ["-d"]
