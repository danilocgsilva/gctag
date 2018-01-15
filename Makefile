
BIN ?= gctag
PREFIX ?= /usr/local

install:
	cp gctag.sh $(PREFIX)/bin/$(BIN)

uninstall:
	rm -f $(PREFIX)/bin/$(BIN)
	