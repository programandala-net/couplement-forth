# Makefile

# This file is part of
# Couplement Forth
# (http://programandala.net/en.program.couplement_forth.html),
# by Marcos Cruz (programandala.net), 2015, 2016, 2020.

# Last modified: 202012241759.
# See change log at the end of the file.

# ==============================================================
# Config {{{1

VPATH = ./:./src
MAKEFLAGS = --no-print-directory

.PHONY: all
all: tap wwwdoc

# ==============================================================
# Main {{{1

.PHONY: tap
tap: bin/couplement_forth.tap

bin/couplement_forth.tap: src/couplement_forth.z80s
	pasmo -I src --name "CplmntFth" --tapbas \
		$< $@ src/couplement_forth.symbols.z80s

# ==============================================================
# Online documentation {{{1

# Online documentation displayed on the Fossil repository.

.PHONY: wwwdoc
wwwdoc: wwwreadme

.PHONY: cleanwww
cleanwww:
	rm -f \
		doc/www/* \
		tmp/README.*

.PHONY: wwwreadme
wwwreadme: doc/www/README.html

doc/www/README.html: tmp/README.html
	echo "<div class='fossil-doc' data-title='README'>" > $@;\
	cat $< >> $@;\
	echo "</div>" >> $@

tmp/README.html: README.adoc
	asciidoctor \
		--embedded \
		--out-file=$@ $<

# ==============================================================
# Change log {{{1

# 2015-01-01: First version
#
# 2016-03-16: Commented out +3 disk code, not used yet. Fixed the dependency.
#
# 2016-03-19: Typo.
#
# 2020-05-27: Update source style.
#
# 2020-12-24: Build an online version of the README file for the Fossil
# repository.
