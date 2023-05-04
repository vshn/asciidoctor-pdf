FROM docker.io/asciidoctor/docker-asciidoctor:1.47.0

RUN gem install asciidoctor-lists
COPY fonts /fonts
COPY theme /theme
COPY plantuml.config /plantuml.config
COPY generate-vshn-pdf.sh /usr/local/bin/generate-vshn-pdf

ENTRYPOINT [ "generate-vshn-pdf" ]
