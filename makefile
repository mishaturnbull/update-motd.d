SRCS = $(wildcard *-*)
INSTALLDIR = /etc/update-motd.d/

runall:
	run-parts ./

install:
	for src in $(SRCS) ; do \
		cp $$src $(INSTALLDIR) ; \
	done

.PHONY = runall install

