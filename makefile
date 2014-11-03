all:
	make release

release: src/hello.c
	make clean
	gcc src/hello.c -o build/release/hello

debug: src/hello.c
	make clean
	gcc -g src/hello.c -o build/debug/hello

clean:
	rm -f build/debug/*
	rm -f build/release/*
