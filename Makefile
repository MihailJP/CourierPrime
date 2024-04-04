TARGETS=UnuarangaKuriero-Regular.ttf \
	UnuarangaKuriero-Italic.ttf \
	UnuarangaKuriero-Bold.ttf \
	UnuarangaKuriero-BoldItalic.ttf

.SUFFIXES: .ttf .ufo

.ufo.ttf:
	fontmake $< -o ttf --output-path $@

.PHONY: all clean

all: ${TARGETS}

clean:
	-rm ${TARGETS}
