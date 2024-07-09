PREFIX?=	${DESTDIR}/var
HTDOCSDIR=	${PREFIX}/www/htdocs

install:
	install -d ${HTDOCSDIR}
	install -m 0644 *.html ${HTDOCSDIR}
	cp -Rp static ${HTDOCSDIR}

uninstall:
	rm -f ${HTDOCSDIR}/*.html
	rm -rf ${HTDOCSDIR}/static

.PHONY: all static install uninstall
