PREFIX?=	${DESTDIR}/var/www
HTDOCSDIR=	${PREFIX}/htdocs
STATICDIR=	${HTDOCSDIR}/static

all: install

install:
	mkdir -p ${STATICDIR}
	cp -p *.html ${HTDOCSDIR}
	cp -Rp img css ${STATICDIR}

uninstall:
	rm -rf ${STATICDIR}

.PHONY: all install uninstall
