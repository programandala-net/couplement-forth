#!/bin/sh
# 2015-01-03
# 2015-01-23: Plus D.
fuse-sdl \
	--machine 128 \
	--no-divide \
	--plusd \
	--plusddisk ./couplement_forth.mgt \
    --tape ./couplement_forth.tap \
	&

