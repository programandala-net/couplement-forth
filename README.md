# Couplement Forth

## Description

Couplement Forth is a small and experimental STC (Subroutine-Threaded
Code) Forth system under development for ZX Spectrum, with a BASIC file
interface easy to adapt to any DOS.

- Home page: <http://programandala.net/en.program.couplement_forth.html>

- SourceHut: <https://hg.sr.ht/~programandala_net/couplement_forth>

- GitHub mirror: <http://github.com/programandala-net/couplement-forth>

## Origin

Couplement Forth was forked on 2014-12-30 from
[ForthCoupe](http://programandala.net/en.program.forthcoupe.html), an
abandoned project based on John A. Avis'
[SamForth](http://programandala.net/en.program.samforth.html) .

## Name

“Couplement” resembles first to the SAM Coupé origin of this Forth
system, and the combination of the original source with the ZX Spectrum
operating system; and second, it resembles to the file interface
combination with BASIC.

Besides, I found the following quote in the “couplement” entry of *The
Collaborative International Dictionary of English v.0.48 \[gcide\]*,
which was definitive for choosing the name:

> And forth together rode, a goodly couplement.
>
> —  Spenser

## Status

Couplement Forth is usable, but many common words and are still missing,
and there’s no disk support yet: the only input is the keyboard.

Most ideas noted for Couplement Forth have already been implemented in
[Solo Forth](http://programandala.net/en.program.solo_forth.html), a DTC
(Direct-Threaded Code) Forth system under active development for ZX
Spectrum 128 with G+DOS, +3DOS or TR-DOS, with a huge library.

Couplement Forth will evolve slowly, as a test system to try and
benchmark a subroutine-threaded Forth in the Z80 processor.

## Compilation

A Makefile is provided. The only requirement is the [Pasmo
assembler](http://pasmo.speccy.org/). Do `make` and a TAP file will be
created in the \<bin\> directory.

## History of the repository

- 2016-03-12: A Git repository was created out of the development
  backups, in order to make future development easier and preserve the
  evolution of the code.

- 2020-12-06: The Git repository was converted to
  [Fossil](https://fossil-scm.org), keeping
  [GitHub](http://github.com/programandala-net/couplement-forth) as a
  mirror.

- 2023-04-05: The repository was converted
  [Mercurial](https://mercurial-scm.org), enabling a better interaction
  with GitHub.

- 2024-08-04: The repository was uploaded to
  [SourceHut](https://hg.sr.ht/~programandala_net/couplement_forth/).
