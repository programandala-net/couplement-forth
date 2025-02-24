# Makefile

# This file is part of
# Couplement Forth
# (http://programandala.net/en.program.couplement_forth.html),
# by Marcos Cruz (programandala.net), 2015, 2016, 2020, 2023, 2025.

# Last modified: 20250224T1643+0100.
# See change log at the end of the file.

# Config {{{1
# ==============================================================

VPATH = ./:./src
MAKEFLAGS = --no-print-directory

# Main {{{1
# ==============================================================

.PHONY: all
all: tap wwwdoc

.PHONY: tap
tap: bin/couplement_forth.tap

bin/couplement_forth.tap: src/couplement_forth.z80s
	pasmo -I src --name "CplmntFth" --tapbas \
		$< $@ src/couplement_forth.symbols.z80s

# README {{{1
# ==============================================================

readme_title = Couplement Forth

include Makefile.readme

# Change log {{{1
# ==============================================================

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
#
# 2023-04-05: Remove online documentation rule, after migration to Mercurial.
#
# 2025-02-24: Include <Makefile.readme> to build a Commonmark version of
# <README.adoc>.
