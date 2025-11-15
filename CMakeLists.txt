add_library(vterm SHARED
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

target_sources(vterm
	PUBLIC
		FILE_SET vterm_public_headers
		TYPE HEADERS
		BASE_DIRS ext/include
		FILES
			ext/include/vterm.h
			ext/include/vterm_keycodes.h
	PRIVATE
		FILE_SET vterm_private_headers
		TYPE HEADERS
		FILES
			ext/src/fullwidth.inc
			ext/src/rect.h
			ext/src/utf8.h
			ext/src/vterm_internal.h
			include/encoding/DECdrawing.inc
			include/encoding/uk.inc
)

set("VTERM_VERSION" "0.3.3")
set_target_properties(vterm PROPERTIES VERSION ${VTERM_VERSION} SOVERSION 0)

target_include_directories (vterm PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/ext/include)
target_include_directories (vterm PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)

include(CMakePackageConfigHelpers)
configure_file(vterm.pc.in vterm.pc @ONLY)

install(
	TARGETS vterm
	RUNTIME DESTINATION "${CMAKE_INSTALL_BINDIR}"
	LIBRARY DESTINATION "${CMAKE_INSTALL_LIBDIR}"
	FILE_SET vterm_public_headers DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}"
)

install(
	FILES ${CMAKE_CURRENT_BINARY_DIR}/vterm.pc DESTINATION ${CMAKE_INSTALL_LIBDIR}/pkgconfig
)
