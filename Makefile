PREFIX ?=	${DESTDIR}/var/www
HTDOCS_DIR =	${PREFIX}/htdocs
STATIC_DIR =	${HTDOCS_DIR}/static

all: static

static:
	@mkdir -p ${STATIC_DIR}
	@cp -Rp img css *.html ${STATIC_DIR}

install: all

uninstall:
	@rm -r ${STATIC_DIR}

.PHONY: all static install uninstall
