parser: parser.cxx
	g++ parser.cxx `llvm-config --cxxflags --ldflags --system-libs --libs core` -o parser

.PHONY: check clean

check: parser
	./parser

clean:
	rm -f parser
