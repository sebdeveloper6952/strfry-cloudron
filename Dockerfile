FROM cloudron/base:4.2.0@sha256:46da2fffb36353ef714f97ae8e962bd2c212ca091108d768ba473078319a47f4

RUN mkdir -p /app/code /app/pkg
WORKDIR /app/code

ARG STRFRY_VERSION=v0.9.6
ARG CHIEF_VERSION=v1.0.0

RUN wget https://github.com/sebdeveloper6952/strfry/releases/download/${STRFRY_VERSION}/strfry
RUN wget https://github.com/sebdeveloper6952/chief/releases/download/${CHIEF_VERSION}/chief

COPY start.sh start.sh
RUN chmod +x start.sh

COPY strfry.conf /app/pkg/strfry.conf
COPY chief-config.toml /etc/chief/config.toml
COPY chief.json /app/pkg/chief.json

CMD [ "/app/code/start.sh" ]
