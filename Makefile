PREFIX ?=	/var/www
HTTPD_DIR =	${PREFIX}/static

all: static

static:
	@mkdir -p ${DESTDIR}${HTTPD_DIR}
	@cp -f index.html ${DESTDIR}${HTTPD_DIR}
	@cp -R img css index.html ${DESTDIR}${HTTPD_DIR}

install: static

uninstall:
	@rm -rf ${DESTDIR}${HTTPD_DIR}

.PHONY: all static install uninstall
