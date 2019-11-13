FROM asciidoctor/docker-asciidoctor

COPY fonts /fonts
COPY theme /theme
COPY generate-vshn-pdf.sh /usr/local/bin/generate-vshn-pdf

ENTRYPOINT [ "generate-vshn-pdf" ]
