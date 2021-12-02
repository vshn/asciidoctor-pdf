all: image

image:
	docker build -t vshn/asciidoctor-pdf:1.14.0 .

build/test.pdf:
	docker run --rm --tty --user "$$(id -u)" --volume "$${PWD}":/documents vshn/asciidoctor-pdf:1.14.0 --destination-dir=build sample/test.adoc

clean:
	rm -rf build
