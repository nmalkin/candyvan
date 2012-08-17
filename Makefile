all:
	coffee -c -o build src/*.coffee

clean:
	rm -rf build
