FROM debian:9.5-slim
RUN apt-get update -y
RUN apt-get install -y qpdf

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
