PREFIX ?=	/var/www
HTTPD_DIR =	${PREFIX}/static

install:
	@mkdir -p ${DESTDIR}${HTTPD_DIR}
	@cp -f index.html ${DESTDIR}${HTTPD_DIR}
	@cp -R img css index.html ${DESTDIR}${HTTPD_DIR}

uninstall:
	@rm -rf ${DESTDIR}${HTTPD_DIR}

.PHONY: install uninstall
