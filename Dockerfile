FROM asciidoctor/docker-asciidoctor:1.14.0

COPY fonts /fonts
COPY theme /theme
COPY plantuml.config /plantuml.config
COPY generate-vshn-pdf.sh /usr/local/bin/generate-vshn-pdf

USER 1001:0

ENTRYPOINT [ "generate-vshn-pdf" ]
