all:

install:
	install -m 755 vdo-by-dev /usr/bin/
	install -m 644 vdo-start-by-dev@.service /usr/lib/systemd/system/
	install -m 644 69-vdo-start-by-dev.rules /usr/lib/udev/rules.d/
