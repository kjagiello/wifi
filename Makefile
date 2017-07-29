.PHONY: help
help: Makefile
	@echo 'Available commands:'
	@sed -n 's/^.PHONY: \(.*\)/* \1/p' $<

.PHONY: install
install:
	@cp ./wifi /usr/local/bin
	@chmod +x /usr/local/bin/wifi
	@echo 'wifi has been successfully installed.'

.PHONY: uninstall
uninstall:
	rm /usr/local/wifi
