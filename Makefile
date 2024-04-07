PREFIX?=	${DESTDIR}/var/www
HTDOCSDIR=	${PREFIX}/htdocs

all: static

static:
	mkdir -p ${HTDOCSDIR}
	cp -p *.html ${HTDOCSDIR}
	cp -Rp static ${HTDOCSDIR}

install: all

uninstall:
	rm -rf ${HTDOCSDIR}/*.html ${HTDOCSDIR}/static

.PHONY: all static install uninstall
