PREFIX ?=	${DESTDIR}/var/www
HTTPD_DIR =	${PREFIX}/static

all: static

static:
	@mkdir -p ${HTTPD_DIR}
	@cp -f index.html ${HTTPD_DIR}
	@cp -R img css index.html ${HTTPD_DIR}

install: all

uninstall:
	@rm -rf ${HTTPD_DIR}

.PHONY: all static install uninstall
