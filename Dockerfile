FROM debian:stretch-slim
MAINTAINER Andreas Fritzler "andreas.fritzler@gmail.com"

RUN apt-get update && apt-get install -y wget freeciv-server

RUN	useradd freeciv
USER freeciv

ENTRYPOINT ["/usr/games/freeciv-server"]
CMD ["--saves", "/freeciv", "--port", "53773" ]

EXPOSE 53773