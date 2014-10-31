all:
	make release

release: hello.c
	make clean
	gcc hello.c -o build/release/hello

debug: hello.c
	make clean
	gcc -g hello.c -o build/debug/hello

clean:
	rm -f build/debug/*
	rm -f build/release/*
