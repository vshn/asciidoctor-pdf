FROM docker.io/asciidoctor/docker-asciidoctor:1.74.0

RUN apk add --no-cache ghostscript
RUN gem install asciidoctor-lists rghost
COPY fonts /fonts
COPY theme /theme
COPY plantuml.config /plantuml.config
COPY generate-vshn-pdf.sh /usr/local/bin/generate-vshn-pdf

ENTRYPOINT [ "generate-vshn-pdf" ]
