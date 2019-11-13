#!/bin/bash

asciidoctor --backend=pdf \
    --require=asciidoctor-pdf \
    --require=asciidoctor-mathematical \
    --require=asciidoctor-diagram \
    --attribute doctype=book \
    --attribute pdf-themesdir=/theme \
    --attribute pdf-theme=vshn \
    --attribute pdf-fontsdir=/fonts \
    --attribute pdf-page-size=A4 \
    --attribute mathematical-format=svg \
    --attribute plantuml-config=/plantuml.config \
    --attribute stem=latexmath \
    --attribute hide-uri-scheme \
    --attribute experimental \
    --attribute source-highlighter=rouge \
    --attribute pygments-style=abap \
    --attribute icons=font \
    --attribute icon-set=fi \
    --attribute numbered \
    --attribute toc \
    --attribute toclevels=2 \
    --attribute sectnumlevels=2 "$@"
