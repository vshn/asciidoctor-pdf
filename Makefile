all: image

image:
	podman build -t ghcr.io/vshn/asciidoctor-pdf:master .

build/test.pdf:
	podman run --rm --volume "$${PWD}":/documents ghcr.io/vshn/asciidoctor-pdf:master --destination-dir=build sample/test.adoc

clean:
	rm -rf build
