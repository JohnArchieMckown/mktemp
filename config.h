/* config.h.  Generated from config.h.in by configure.  */
/* config.h.in.  Generated from configure.in by autoheader.  */

#ifndef _MKTEMP_CONFIG_H
#define _MKTEMP_CONFIG_H

/* Define to 1 if you have the `arc4random' function. */
/* #undef HAVE_ARC4RANDOM */

/* Define to 1 if you have the `arc4random_uniform' function. */
/* #undef HAVE_ARC4RANDOM_UNIFORM */

/* Define to 1 if you have the `getopt_long' function. */
#define HAVE_GETOPT_LONG 1

/* Define to 1 if you have the <inttypes.h> header file. */
#define HAVE_INTTYPES_H 1

/* Define to 1 if you have the <memory.h> header file. */
#define HAVE_MEMORY_H 1

/* Define to 1 if you have the `mkdtemp' function. */
/* #undef HAVE_MKDTEMP */

/* Define to 1 if you have the <paths.h> header file. */
#define HAVE_PATHS_H 1

/* Define to 1 if you use prngd/egd as your entropy source. */
/* #undef HAVE_PRNGD */

/* Define if your crt0.o defines the __progname symbol for you. */
#define HAVE_PROGNAME 1

/* Define to 1 if you have the <stdint.h> header file. */
#define HAVE_STDINT_H 1

/* Define to 1 if you have the <stdlib.h> header file. */
#define HAVE_STDLIB_H 1

/* Define to 1 if you have the `strdup' function. */
#define HAVE_STRDUP 1

/* Define to 1 if you have the `strerror' function. */
#define HAVE_STRERROR 1

/* Define to 1 if you have the <strings.h> header file. */
#define HAVE_STRINGS_H 1

/* Define to 1 if you have the <string.h> header file. */
#define HAVE_STRING_H 1

/* Define to 1 if you have the <sys/stat.h> header file. */
#define HAVE_SYS_STAT_H 1

/* Define to 1 if you have the <sys/time.h> header file. */
#define HAVE_SYS_TIME_H 1

/* Define to 1 if you have the <sys/types.h> header file. */
#define HAVE_SYS_TYPES_H 1

/* Define to 1 if you have the <unistd.h> header file. */
#define HAVE_UNISTD_H 1

/* Use the system or private version of mkdtemp? */
#define MKDTEMP priv_mkdtemp

/* Use the system or private version of mkstemp? */
#define MKSTEMP priv_mkstemp

/* Define to the address where bug reports for this package should be sent. */
#define PACKAGE_BUGREPORT ""

/* Define to the full name of this package. */
#define PACKAGE_NAME "mktemp"

/* Define to the full name and version of this package. */
#define PACKAGE_STRING "mktemp 1.7"

/* Define to the one symbol short name of this package. */
#define PACKAGE_TARNAME "mktemp"

/* Define to the version of this package. */
#define PACKAGE_VERSION "1.7"

/* Define to the path to prngd's socket file. */
/* #undef PRNGD_PATH */

/* Define to the port prngd listens on. */
/* #undef PRNGD_PORT */

/* Define to 1 if you have the ANSI C header files. */
#define STDC_HEADERS 1

/* Define to 1 if you can safely include both <sys/time.h> and <time.h>. */
#define TIME_WITH_SYS_TIME 1

/* Location of random device/stream if you have one. */
#define _PATH_RANDOM "/dev/urandom"

/* Deal with ANSI stuff reasonably.  */
/* #undef  __P */
#if defined (__cplusplus) || defined (__STDC__)
# define __P(args)		args
#else
# define __P(args)		()
#endif

/* Ignore __attribute__ if non-gcc or gcc < 2.5 */
#if !defined(__GNUC__) || __GNUC__ < 2 ||  (__GNUC__ == 2 && __GNUC_MINOR__ < 5)
#define __attribute__(args)
#endif

/* Define to empty if `const' does not conform to ANSI C. */
/* #undef const */

/* Define to `int' if <sys/types.h> does not define. */
/* #undef ssize_t */

#endif /* _MKTEMP_CONFIG_H */
