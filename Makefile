#
# Copyright (c) 2000, 2001, 2008, 2010
#	Todd C. Miller <Todd.Miller@courtesan.com>
#
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
# Makefile.  Generated from Makefile.in by configure.
#

#### Start of system configuration section. ####

srcdir = .
authdir = $(srcdir)/auth


# Compiler & tools to use
CC = gcc

# Executable and object file extensions
EXEEXT = 
OBJEXT = o

# Which install program?
INSTALL = $(SHELL) $(srcdir)/install-sh -c

# Libraries
LIBS = 

# C preprocessor flags
CPPFLAGS = -I$(srcdir) -I. 

# Usually -O and/or -g
CFLAGS = -g -O2

# Flags to pass to the link stage
LDFLAGS = 

# Man page type (man or mdoc)
mantype = mdoc

# Where to install things...
prefix = /usr/local
exec_prefix = $(prefix)
bindir = ${exec_prefix}/bin
sbindir = ${exec_prefix}/sbin
sysconfdir = ${prefix}/etc
mandir = ${datarootdir}/man
datarootdir = ${prefix}/share

#### End of system configuration section. ####

SHELL = /bin/sh

PROG = mktemp$(EXEEXT)

OBJS = mktemp.$(OBJEXT)  ${LIBOBJDIR}arc4random$U.o ${LIBOBJDIR}priv_mktemp$U.o

VERSION = 1.7

DISTFILES = INSTALL INSTALL.configure LICENSE Makefile.in README RELEASE_NOTES \
	    config.guess config.h.in config.sub configure configure.in \
	    extern.h install-sh mkdtemp.c mkinstalldirs mktemp.c mktemp.man \
	    mktemp.mdoc priv_mktemp.c arc4random.c strdup.c strerror.c

all: $(PROG)

.SUFFIXES: .o .obj .c .h

.c.o:
	$(CC) -c $(CPPFLAGS) $(CFLAGS) $<

.c.obj:
	$(CC) -c $(CPPFLAGS) $(CFLAGS) $<

$(PROG): $(OBJS)
	$(CC) -o $@ $(OBJS) $(LDFLAGS) $(LIBS)

$(OBJS): config.h

install: install-dirs install-binaries install-man

install-dirs:
	$(SHELL) $(srcdir)/mkinstalldirs $(DESTDIR)$(bindir) \
	    $(DESTDIR)$(mandir)/man1

install-binaries: $(PROG)
	$(INSTALL) -m 0555 -s $(PROG) $(DESTDIR)$(bindir)/$(PROG)

install-man:
	$(INSTALL) -m 0444 $(srcdir)/mktemp.$(mantype) \
	    $(DESTDIR)$(mandir)/man1/mktemp.1

check:
	@echo nothing to check

tags: $(SRCS)
	ctags $(SRCS)

TAGS: $(SRCS)
	etags $(SRCS)

clean:
	-rm -f *.$(OBJEXT) $(PROG) core $(PROG).core

mostlyclean: clean

distclean: clean
	-rm -rf Makefile config.h config.status config.cache config.log autom4te.cache

clobber: distclean

realclean: distclean
	rm -f TAGS tags

cleandir: realclean

dist: $(DISTFILES)
	pax -w -x ustar -s '/^/mktemp-$(VERSION)\//' \
	    -f ../mktemp-$(VERSION).tar $(DISTFILES)
	gzip -9f ../mktemp-$(VERSION).tar
	ls -l ../mktemp-$(VERSION).tar.gz
