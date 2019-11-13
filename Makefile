all: image

image:
	docker build -t vshn/asciidoctor-pdf:1.0 .

test.pdf:
	docker run --rm --tty --user "$$(id -u)" --volume "$${PWD}":/documents vshn/asciidoctor-pdf:1.0 sample/test.adoc --destination-dir=.
