add_library(vterm SHARED
	encoding/DECdrawing.inc
	encoding/uk.inc
	ext/include/vterm.h
	ext/src/encoding.c
	ext/src/keyboard.c
	ext/src/mouse.c
	ext/src/parser.c
	ext/src/pen.c
	ext/src/screen.c
	ext/src/state.c
	ext/src/unicode.c
	ext/src/vterm.c
)

target_include_directories (vterm PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/ext/include)
target_include_directories (vterm PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)

install(TARGETS vterm
    RUNTIME DESTINATION "${CMAKE_INSTALL_BINDIR}"
    LIBRARY DESTINATION "${CMAKE_INSTALL_LIBDIR}"
)
