FROM asciidoctor/docker-asciidoctor:1.1.0

COPY fonts /fonts
COPY theme /theme
COPY plantuml.config /plantuml.config
COPY generate-vshn-pdf.sh /usr/local/bin/generate-vshn-pdf

ENTRYPOINT [ "generate-vshn-pdf" ]
