FROM asciidoctor/docker-asciidoctor

RUN apk add --no-cache \
    build-base \
    libxml2-dev \
    ruby-dev \
    && gem update --no-document \
    && gem install --no-document asciimath asciidoctor-mathematical asciidoctor-diagram

COPY fonts /fonts
COPY theme /theme
COPY plantuml.config /plantuml.config
COPY generate-vshn-pdf.sh /usr/local/bin/generate-vshn-pdf

ENTRYPOINT [ "generate-vshn-pdf" ]
