FROM alpine:latest

RUN apk add --no-cache curl

COPY check_url.sh /check_url.sh

RUN chmod +x /check_url.sh

CMD ["/check_url.sh"]
