PREFIX?=	${DESTDIR}/var/www
HTDOCSDIR=	${PREFIX}/htdocs

all: install

install:
	mkdir -p ${HTDOCSDIR}
	cp -Rp img css *.html ${HTDOCSDIR}

uninstall:
	rm -r ${HTDOCSDIR}

.PHONY: all install uninstall
