TARGETS=UnuarangaKuriero-Regular.ttf \
	UnuarangaKuriero-Italic.ttf \
	UnuarangaKuriero-Bold.ttf \
	UnuarangaKuriero-BoldItalic.ttf

DOCUMENTS=README.md OFL.txt DESCRIPTION.en_us.html AUTHORS.txt

PACKAGES=UnuarangaKuriero.zip

.SUFFIXES: .ttf .ufo .zip

.ufo.ttf:
	fontmake $< -o ttf --output-path $@

.PHONY: all dist clean

all: ${TARGETS}

UnuarangaKuriero.zip: ${TARGETS} ${DOCUMENTS}
	mkdir $* && cp $^ $* && zip -9 -m -r $@ $*

dist: ${PACKAGES}

clean:
	-rm -rf ${TARGETS} ${PACKAGES} ${PACKAGES:%.zip=%}
