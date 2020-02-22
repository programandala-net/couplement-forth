# Makefile for Couplement Forth

################################################################
# Change log

# 2015-01-01: First version
#
# 2016-03-16: Commented out +3 disk code, not used yet.
# Fixed the dependency.
#
# 2016-03-19: Typo.

################################################################
# Notes

# $? list of dependencies changed more recently than current target
# $@ name of current target
# $< name of current dependency

################################################################
# Config

VPATH = ./:./src
MAKEFLAGS = --no-print-directory

.PHONY: all
all: tap 

################################################################
# Program

.PHONY: tap
tap: bin/couplement_forth.tap

bin/couplement_forth.tap: src/couplement_forth.z80s
	pasmo -I src --name "CplmntFth" --tapbas \
		src/couplement_forth.z80s \
		bin/couplement_forth.tap \
		src/couplement_forth.symbols.z80s


# XXX TODO -- not used yet:

# couplement_forth_720k.dsk: couplement_forth.tap
# 	tap2dsk -720 -label DZXForth couplement_forth.tap couplement_forth_720k.dsk

# couplement_forth_180k.dsk: couplement_forth.tap
# 	tap2dsk -180 -label DZXForth couplement_forth.tap couplement_forth_180k.dsk

# .PHONY: dsk
# dsk:
# 	@make couplement_forth_180k.dsk
# 	@make couplement_forth_720k.dsk

