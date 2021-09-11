FROM debian:9.5-slim
RUN apt-get install -y poppler poppler-utils

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
