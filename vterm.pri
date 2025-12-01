INCLUDEPATH += $$PWD/include

HEADERS += \
	$$PWD/ext/src/fullwidth.inc \
	$$PWD/ext/src/rect.h \
	$$PWD/ext/src/utf8.h \
	$$PWD/ext/src/vterm_internal.h \
	$$PWD/include/encoding/DECdrawing.inc \
	$$PWD/include/encoding/uk.inc

SOURCES += \
	$$PWD/ext/src/encoding.c \
	$$PWD/ext/src/keyboard.c \
	$$PWD/ext/src/mouse.c \
	$$PWD/ext/src/parser.c \
	$$PWD/ext/src/pen.c \
	$$PWD/ext/src/screen.c \
	$$PWD/ext/src/state.c \
	$$PWD/ext/src/unicode.c \
	$$PWD/ext/src/vterm.c
