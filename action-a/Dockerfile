FROM debian:9.5-slim
RUN apk --update add poppler poppler-utils

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
