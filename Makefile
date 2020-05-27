# Makefile

# This file is part of
# Couplement Forth
# (http://programandala.net/en.program.couplement_forth.html),
# by Marcos Cruz (programandala.net), 2015, 2016, 2020.

# ==============================================================
# Config

VPATH = ./:./src
MAKEFLAGS = --no-print-directory

.PHONY: all
all: tap 

# ==============================================================
# Main

.PHONY: tap
tap: bin/couplement_forth.tap

bin/couplement_forth.tap: src/couplement_forth.z80s
	pasmo -I src --name "CplmntFth" --tapbas \
		$< $@ src/couplement_forth.symbols.z80s

# ==============================================================
# Change log

# 2015-01-01: First version
#
# 2016-03-16: Commented out +3 disk code, not used yet. Fixed the dependency.
#
# 2016-03-19: Typo.
#
# 2020-05-27: Update source style.
