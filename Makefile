PREFIX?=	${DESTDIR}/var/www
HTDOCS_DIR=	${PREFIX}/htdocs
STATIC_DIR=	${HTDOCS_DIR}/static

all: install

install:
	mkdir -p ${STATIC_DIR}
	cp -Rp img css *.html ${STATIC_DIR}

uninstall:
	rm -r ${STATIC_DIR}

.PHONY: all install uninstall
