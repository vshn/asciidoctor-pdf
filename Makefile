all: image

image:
	docker build -t vshn/asciidoctor-pdf:1.8.1 .

test.pdf:
	docker run --rm --tty --user "$$(id -u)" --volume "$${PWD}":/documents vshn/asciidoctor-pdf:1.8.1 sample/test.adoc --destination-dir=.
