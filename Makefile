all: image

image:
	docker build -t vshn/asciidoctor-pdf:1.0 .
