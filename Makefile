parser: parser.cxx
	c++ -I/usr/local/opt/llvm/include --std=c++14 parser.cxx -o parser

.PHONY: check clean

check: parser
	./parser

clean:
	rm -f parser
