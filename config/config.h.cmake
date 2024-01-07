/* config/config.h.cmake.  Hand crafted from config/config.h.in.  */

/* Define if building universal (internal helper macro) */
#cmakedefine AC_APPLE_UNIVERSAL_BUILD 1

/* Define if you have AUTOTRACE library */
#cmakedefine AUTOTRACE_DELEGATE 1

/* Define if coders and filters are to be built as modules. */
#cmakedefine BUILD_MODULES 1

/* Define if you have the bzip2 library */
#cmakedefine BZLIB_DELEGATE 1

/* Define if you have CAIRO library */
#cmakedefine CAIRO_DELEGATE 1

/* Channel mask depth */
#cmakedefine CHANNEL_MASK_DEPTH @CHANNEL_MASK_DEPTH@

/* permit enciphering and deciphering image pixels */
#cmakedefine CIPHER_SUPPORT 1

/* coders subdirectory. */
#cmakedefine CODER_DIRNAME "@CODER_DIRNAME@"

/* Directory where architecture-dependent configuration files live. */
#cmakedefine CONFIGURE_PATH "@CONFIGURE_PATH@"

/* Subdirectory of lib where architecture-dependent configuration files live.
   */
#cmakedefine CONFIGURE_RELATIVE_PATH "@CONFIGURE_RELATIVE_PATH@"

/* Define if you have DJVU library */
#cmakedefine DJVU_DELEGATE 1

/* Directory where ImageMagick documents live. */
#cmakedefine DOCUMENTATION_PATH "@DOCUMENTATION_PATH@"

/* Define to 1 to enable distributed pixel cache support. */
#cmakedefine DPC_SUPPORT 1

/* Define if you have Display Postscript */
#cmakedefine DPS_DELEGATE 1

/* exclude deprecated methods in MagickCore API */
#cmakedefine EXCLUDE_DEPRECATED "@EXCLUDE_DEPRECATED@"

/* Directory where executables are installed. */
#cmakedefine EXECUTABLE_PATH "@EXECUTABLE_PATH@"

/* Define if you have FFTW library */
#cmakedefine FFTW_DELEGATE 1

/* filter subdirectory. */
#cmakedefine FILTER_DIRNAME "@FILTER_DIRNAME@"

/* Define if you have FLIF library */
#cmakedefine FLIF_DELEGATE 1

/* Define if you have FONTCONFIG library */
#cmakedefine FONTCONFIG_DELEGATE 1

/* Define if you have FlashPIX library */
#cmakedefine FPX_DELEGATE 1

/* Define if you have FREETYPE library */
#cmakedefine FREETYPE_DELEGATE 1

/* Define if you have Ghostscript library or framework */
#cmakedefine GS_DELEGATE 1

/* Define if you have GVC library */
#cmakedefine GVC_DELEGATE 1

/* Define to 1 if you have the `acosh' function. */
#cmakedefine HAVE_ACOSH 1

/* Define to 1 if you have the `aligned_malloc' function. */
#cmakedefine HAVE_ALIGNED_MALLOC 1

/* Define to 1 if you have the <arm/limits.h> header file. */
#cmakedefine HAVE_ARM_LIMITS_H 1

/* Define to 1 if you have the <arpa/inet.h> header file. */
#cmakedefine HAVE_ARPA_INET_H 1

/* Define to 1 if you have the `asinh' function. */
#cmakedefine HAVE_ASINH 1

/* Define to 1 if you have the `atanh' function. */
#cmakedefine HAVE_ATANH 1

/* Define to 1 if you have the `atexit' function. */
#cmakedefine HAVE_ATEXIT 1

/* Define to 1 if you have the `atoll' function. */
#cmakedefine HAVE_ATOLL 1

/* define if bool is a built-in type */
#cmakedefine HAVE_BOOL

/* Define to 1 if you have the `cabs' function. */
#cmakedefine HAVE_CABS 1

/* Define to 1 if you have the `carg' function. */
#cmakedefine HAVE_CARG 1

/* Define to 1 if you have the `cimag' function. */
#cmakedefine HAVE_CIMAG 1

/* Define to 1 if you have the `clock' function. */
#cmakedefine HAVE_CLOCK 1

/* Define to 1 if you have the `clock_getres' function. */
#cmakedefine HAVE_CLOCK_GETRES 1

/* Define to 1 if you have the `clock_gettime' function. */
#cmakedefine HAVE_CLOCK_GETTIME 1

/* Define to 1 if clock_gettime supports CLOCK_REALTIME. */
#cmakedefine HAVE_CLOCK_REALTIME 1

/* Define to 1 if you have the <CL/cl.h> header file. */
#cmakedefine HAVE_CL_CL_H 1

/* Define to 1 if you have the <complex.h> header file. */
#cmakedefine HAVE_COMPLEX_H 1

/* Define to 1 if you have the `creal' function. */
#cmakedefine HAVE_CREAL 1

/* Define to 1 if you have the `ctime_r' function. */
#cmakedefine HAVE_CTIME_R 1

/* Define to 1 if you have the declaration of `pread', and to 0 if you don't.
   */
#cmakedefine HAVE_DECL_PREAD 1

/* Define to 1 if you have the declaration of `pwrite', and to 0 if you don't.
   */
#cmakedefine HAVE_DECL_PWRITE 1

/* Define to 1 if you have the declaration of `strerror_r', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL_STRERROR_R 1

/* Define to 1 if you have the declaration of `strlcpy', and to 0 if you
   don't. */
#cmakedefine01 HAVE_DECL_STRLCPY

/* Define to 1 if you have the declaration of `tzname', and to 0 if you don't.
   */
#cmakedefine HAVE_DECL_TZNAME 1

/* Define to 1 if you have the declaration of `vsnprintf', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL_VSNPRINTF 1

/* Define to 1 if you have the `directio' function. */
#cmakedefine HAVE_DIRECTIO 1

/* Define to 1 if you have the <dirent.h> header file, and it defines `DIR'.
   */
#cmakedefine HAVE_DIRENT_H 1

/* Define to 1 if you have the <dlfcn.h> header file. */
#cmakedefine HAVE_DLFCN_H 1

/* Define to 1 if you have the `erf' function. */
/* Add conditionally as <nt-base.h> already defines the macro */
#ifndef HAVE_ERF
#cmakedefine HAVE_ERF 1
#endif

/* Define to 1 if you have the <errno.h> header file. */
#cmakedefine HAVE_ERRNO_H 1

/* Define to 1 if you have the `execvp' function. */
#cmakedefine HAVE_EXECVP 1

/* Define to 1 if you have the `fchmod' function. */
#cmakedefine HAVE_FCHMOD 1

/* Define to 1 if you have the <fcntl.h> header file. */
#cmakedefine HAVE_FCNTL_H 1

/* Define to 1 if you have the <float.h> header file. */
#cmakedefine HAVE_FLOAT_H 1

/* Define to 1 if you have the `floor' function. */
#cmakedefine HAVE_FLOOR 1

/* Define to 1 if you have the `fork' function. */
#cmakedefine HAVE_FORK 1

/* Define to 1 if fseeko (and presumably ftello) exists and is declared. */
#cmakedefine HAVE_FSEEKO 1

/* Define to 1 if you have the `ftime' function. */
#cmakedefine HAVE_FTIME 1

/* Define to 1 if you have the `ftruncate' function. */
#cmakedefine HAVE_FTRUNCATE 1

/* Define to 1 if you have the `getcwd' function. */
#cmakedefine HAVE_GETCWD 1

/* Define to 1 if you have the `getc_unlocked' function. */
#cmakedefine HAVE_GETC_UNLOCKED 1

/* Define to 1 if you have the `getdtablesize' function. */
#cmakedefine HAVE_GETDTABLESIZE 1

/* Define to 1 if you have the `getentropy' function. */
#cmakedefine HAVE_GETENTROPY 1

/* Define to 1 if you have the `getexecname' function. */
#cmakedefine HAVE_GETEXECNAME 1

/* Define to 1 if you have the `getpagesize' function. */
#cmakedefine HAVE_GETPAGESIZE 1

/* Define to 1 if you have the `getpid' function. */
#cmakedefine HAVE_GETPID 1

/* Define to 1 if you have the `getpwnam_r' function. */
#cmakedefine HAVE_GETPWNAM_R 1

/* Define to 1 if you have the `getrlimit' function. */
#cmakedefine HAVE_GETRLIMIT 1

/* Define to 1 if you have the `getrusage' function. */
#cmakedefine HAVE_GETRUSAGE 1

/* Define to 1 if you have the `gettimeofday' function. */
#cmakedefine HAVE_GETTIMEOFDAY 1

/* Define to 1 if you have the `gmtime_r' function. */
#cmakedefine HAVE_GMTIME_R 1

/* Compile with hugepage support */
#cmakedefine HAVE_HUGEPAGES 1

/* Define to 1 if the system has the type `intmax_t'. */
#cmakedefine HAVE_INTMAX_T 1

/* Define to 1 if the system has the type `intptr_t'. */
#cmakedefine HAVE_INTPTR_T 1

/* Define to 1 if you have the <inttypes.h> header file. */
#cmakedefine HAVE_INTTYPES_H 1

/* Define to 1 if you have the `isnan' function. */
#cmakedefine HAVE_ISNAN 1

/* Define to 1 if you have the `j0' function. */
#cmakedefine HAVE_J0 1

/* Define to 1 if you have the `j1' function. */
#cmakedefine HAVE_J1 1

/* Define if you have jemalloc memory allocation library */
#cmakedefine HAVE_JEMALLOC 1

/* Define if you have the <lcms2.h> header file. */
#cmakedefine HAVE_LCMS2_H 1

/* Define if you have the <lcms2/lcms2.h> header file. */
#cmakedefine HAVE_LCMS2_LCMS2_H 1

/* Define if you have the <libraw/libraw.h> header file. */
#cmakedefine HAVE_LIBRAW_LIBRAW_H 1

/* Define if you have the <libheif/heif.h> header file. */
#cmakedefine HAVE_LIBHEIF_LIBHEIF_H 1

/* Define to 1 if you have the `gcov' library (-lgcov). */
#cmakedefine HAVE_LIBGCOV 1

/* Define to 1 if you have the <limits.h> header file. */
#cmakedefine HAVE_LIMITS_H 1

/* Define if you have Linux-compatible sendfile() */
#cmakedefine HAVE_LINUX_SENDFILE 1

/* Define to 1 if you have the <linux/unistd.h> header file. */
#cmakedefine HAVE_LINUX_UNISTD_H 1

/* Define to 1 if you have the `lltostr' function. */
#cmakedefine HAVE_LLTOSTR 1

/* Define to 1 if you have the <locale.h> header file. */
#cmakedefine HAVE_LOCALE_H 1

/* Define to 1 if you have the `localtime_r' function. */
#cmakedefine HAVE_LOCALTIME_R 1

/* Define to 1 if the system has the type `long double'. */
#cmakedefine HAVE_LONG_DOUBLE 1

/* Define to 1 if the type `long double' works and has more range or precision
   than `double'. */
#cmakedefine HAVE_LONG_DOUBLE_WIDER 1

/* Define to 1 if the system has the type `long long int'. */
#cmakedefine HAVE_LONG_LONG_INT 1

/* Define to 1 if you have the `lstat' function. */
#cmakedefine HAVE_LSTAT 1

/* Define to 1 if you have the <machine/param.h> header file. */
#cmakedefine HAVE_MACHINE_PARAM_H 1

/* Define to 1 if you have the <mach-o/dyld.h> header file. */
#cmakedefine HAVE_MACH_O_DYLD_H 1

/* Define to 1 if you have the <malloc.h> header file. */
#cmakedefine HAVE_MALLOC_H 1

/* Define to 1 if <wchar.h> declares mbstate_t. */
#cmakedefine HAVE_MBSTATE_T 1

/* Define to 1 if you have the `memmove' function. */
#cmakedefine HAVE_MEMMOVE 1

/* Define to 1 if you have the `memset' function. */
#cmakedefine HAVE_MEMSET 1

/* Define to 1 if you have the <minix/config.h> header file. */
#cmakedefine HAVE_MINIX_CONFIG_H 1

/* Define to 1 if you have the `mkdir' function. */
#cmakedefine HAVE_MKDIR 1

/* Define to 1 if you have the `mkstemp' function. */
#cmakedefine HAVE_MKSTEMP 1

/* Define to 1 if you have a working `mmap' system call. */
#cmakedefine HAVE_MMAP 1

/* Define if you have the mtmalloc memory allocation library */
#cmakedefine HAVE_MTMALLOC 1

/* Define to 1 if you have the `munmap' function. */
#cmakedefine HAVE_MUNMAP 1

/* define if the compiler implements namespaces */
#cmakedefine HAVE_NAMESPACES

/* Define if g++ supports namespace std. */
#cmakedefine HAVE_NAMESPACE_STD

/* Define to 1 if you have the `nanosleep' function. */
#cmakedefine HAVE_NANOSLEEP 1

/* Define to 1 if you have the <ndir.h> header file, and it defines `DIR'. */
#cmakedefine HAVE_NDIR_H 1

/* Define to 1 if you have the <netdb.h> header file. */
#cmakedefine HAVE_NETDB_H 1

/* Define to 1 if you have the <netinet/in.h> header file. */
#cmakedefine HAVE_NETINET_IN_H 1

/* Define to 1 if you have the `newlocale' function. */
#cmakedefine HAVE_NEWLOCALE 1

/* Define to 1 if you have the <OpenCL/cl.h> header file. */
#cmakedefine HAVE_OPENCL_CL_H 1

/* Define to 1 if you have the <OS.h> header file. */
#cmakedefine HAVE_OS_H 1

/* Define to 1 if you have the `pclose' function. */
#cmakedefine HAVE_PCLOSE 1

/* Define to 1 if you have the `poll' function. */
#cmakedefine HAVE_POLL 1

/* Define to 1 if you have the `popen' function. */
#cmakedefine HAVE_POPEN 1

/* Define to 1 if you have the `posix_fadvise' function. */
#cmakedefine HAVE_POSIX_FADVISE 1

/* Define to 1 if you have the `posix_fallocate' function. */
#cmakedefine HAVE_POSIX_FALLOCATE 1

/* Define to 1 if you have the `posix_madvise' function. */
#cmakedefine HAVE_POSIX_MADVISE 1

/* Define to 1 if you have the `posix_memalign' function. */
#cmakedefine HAVE_POSIX_MEMALIGN 1

/* Define to 1 if you have the `posix_spawnp' function. */
#cmakedefine HAVE_POSIX_SPAWNP 1

/* Define to 1 if you have the `pow' function. */
#cmakedefine HAVE_POW 1

/* Define to 1 if you have the `pread' function. */
#cmakedefine HAVE_PREAD 1

/* Define to 1 if you have the <process.h> header file. */
#cmakedefine HAVE_PROCESS_H 1

/* Define if you have POSIX threads libraries and header files. */
#cmakedefine HAVE_PTHREAD 1

/* Have PTHREAD_PRIO_INHERIT. */
#cmakedefine HAVE_PTHREAD_PRIO_INHERIT 1

/* Define to 1 if you have the `putenv' function. */
#cmakedefine HAVE_PUTENV 1

/* Define to 1 if you have the `pwrite' function. */
#cmakedefine HAVE_PWRITE 1

/* Define to 1 if you have the `qsort_r' function. */
#cmakedefine HAVE_QSORT_R 1

/* Define to 1 if you have the `raise' function. */
#cmakedefine HAVE_RAISE 1

/* Define to 1 if you have the `rand_r' function. */
#cmakedefine HAVE_RAND_R 1

/* Define to 1 if you have the `readlink' function. */
#cmakedefine HAVE_READLINK 1

/* Define to 1 if you have the `realpath' function. */
#cmakedefine HAVE_REALPATH 1

/* Define to 1 if you have the `seekdir' function. */
#cmakedefine HAVE_SEEKDIR 1

/* Define to 1 if you have the `select' function. */
#cmakedefine HAVE_SELECT 1

/* Define to 1 if you have the `sendfile' function. */
#cmakedefine HAVE_SENDFILE 1

/* Define to 1 if you have the `setlocale' function. */
#cmakedefine HAVE_SETLOCALE 1

/* Define to 1 if you have the `setvbuf' function. */
#cmakedefine HAVE_SETVBUF 1

/* X11 server supports shape extension */
#cmakedefine HAVE_SHAPE 1

/* X11 server supports shared memory extension */
#cmakedefine HAVE_SHARED_MEMORY 1

/* Define to 1 if you have the `sigaction' function. */
#cmakedefine HAVE_SIGACTION 1

/* Define to 1 if you have the `sigemptyset' function. */
#cmakedefine HAVE_SIGEMPTYSET 1

/* Define to 1 if you have the `socket' function. */
#cmakedefine HAVE_SOCKET 1

/* Define to 1 if you have the `spawnvp' function. */
#cmakedefine HAVE_SPAWNVP 1

/* Define to 1 if you have the `sqrt' function. */
#cmakedefine HAVE_SQRT 1

/* Define to 1 if you have the `stat' function. */
#cmakedefine HAVE_STAT 1

/* Define to 1 if you have the <stdarg.h> header file. */
#cmakedefine HAVE_STDARG_H 1

/* Define to 1 if stdbool.h conforms to C99. */
#cmakedefine HAVE_STDBOOL_H 1

/* Define to 1 if you have the <stddef.h> header file. */
#cmakedefine HAVE_STDDEF_H 1

/* Define to 1 if you have the <stdint.h> header file. */
#cmakedefine HAVE_STDINT_H 1

/* Define to 1 if you have the <stdlib.h> header file. */
#cmakedefine HAVE_STDLIB_H 1

/* define if the compiler supports ISO C++ standard library */
#cmakedefine HAVE_STD_LIBS

/* Define to 1 if you have the `strcasecmp' function. */
#cmakedefine HAVE_STRCASECMP 1

/* Define to 1 if you have the `strcasestr' function. */
#cmakedefine HAVE_STRCASESTR 1

/* Define to 1 if you have the `strchr' function. */
#cmakedefine HAVE_STRCHR 1

/* Define to 1 if you have the `strcspn' function. */
#cmakedefine HAVE_STRCSPN 1

/* Define to 1 if you have the `strdup' function. */
#cmakedefine HAVE_STRDUP 1

/* Define to 1 if you have the `strerror' function. */
#cmakedefine HAVE_STRERROR 1

/* Define if you have `strerror_r'. */
#cmakedefine HAVE_STRERROR_R 1

/* Define to 1 if cpp supports the ANSI # stringizing operator. */
#cmakedefine HAVE_STRINGIZE 1

/* Define to 1 if you have the <strings.h> header file. */
#cmakedefine HAVE_STRINGS_H 1

/* Define to 1 if you have the <string.h> header file. */
#cmakedefine HAVE_STRING_H 1

/* Define to 1 if you have the `strlcat' function. */
#cmakedefine HAVE_STRLCAT 1

/* Define to 1 if you have the `strlcpy' function. */
#cmakedefine HAVE_STRLCPY 1

/* Define to 1 if you have the `strncasecmp' function. */
#cmakedefine HAVE_STRNCASECMP 1

/* Define to 1 if you have the `strpbrk' function. */
#cmakedefine HAVE_STRPBRK 1

/* Define to 1 if you have the `strrchr' function. */
#cmakedefine HAVE_STRRCHR 1

/* Define to 1 if you have the `strspn' function. */
#cmakedefine HAVE_STRSPN 1

/* Define to 1 if you have the `strstr' function. */
#cmakedefine HAVE_STRSTR 1

/* Define to 1 if you have the `strtod' function. */
#cmakedefine HAVE_STRTOD 1

/* Define to 1 if you have the `strtod_l' function. */
#cmakedefine HAVE_STRTOD_L 1

/* Define to 1 if you have the `strtol' function. */
#cmakedefine HAVE_STRTOL 1

/* Define to 1 if you have the `strtoul' function. */
#cmakedefine HAVE_STRTOUL 1

/* Define to 1 if `tm_zone' is a member of `struct tm'. */
#cmakedefine HAVE_STRUCT_TM_TM_ZONE 1

/* Define to 1 if you have the <sun_prefetch.h> header file. */
#cmakedefine HAVE_SUN_PREFETCH_H 1

/* Define to 1 if you have the `symlink' function. */
#cmakedefine HAVE_SYMLINK 1

/* Define to 1 if you have the `sysconf' function. */
#cmakedefine HAVE_SYSCONF 1

/* Define to 1 if you have the `system' function. */
#cmakedefine HAVE_SYSTEM 1

/* Define to 1 if you have the <sys/dir.h> header file, and it defines `DIR'.
   */
#cmakedefine HAVE_SYS_DIR_H 1

/* Define to 1 if you have the <sys/ipc.h> header file. */
#cmakedefine HAVE_SYS_IPC_H 1

/* Define to 1 if you have the <sys/mman.h> header file. */
#cmakedefine HAVE_SYS_MMAN_H 1

/* Define to 1 if you have the <sys/ndir.h> header file, and it defines `DIR'.
   */
#cmakedefine HAVE_SYS_NDIR_H 1

/* Define to 1 if you have the <sys/param.h> header file. */
#cmakedefine HAVE_SYS_PARAM_H 1

/* Define to 1 if you have the <sys/resource.h> header file. */
#cmakedefine HAVE_SYS_RESOURCE_H 1

/* Define to 1 if you have the <sys/sendfile.h> header file. */
#cmakedefine HAVE_SYS_SENDFILE_H 1

/* Define to 1 if you have the <sys/socket.h> header file. */
#cmakedefine HAVE_SYS_SOCKET_H 1

/* Define to 1 if you have the <sys/stat.h> header file. */
#cmakedefine HAVE_SYS_STAT_H 1

/* Define to 1 if you have the <sys/syslimits.h> header file. */
#cmakedefine HAVE_SYS_SYSLIMITS_H 1

/* Define to 1 if you have the <sys/times.h> header file. */
#cmakedefine HAVE_SYS_TIMES_H 1

/* Define to 1 if you have the <sys/time.h> header file. */
#cmakedefine HAVE_SYS_TIME_H 1

/* Define to 1 if you have the <sys/types.h> header file. */
#cmakedefine HAVE_SYS_TYPES_H 1

/* Define to 1 if you have the <sys/uio.h> header file. */
#cmakedefine HAVE_SYS_UIO_H 1

/* Define to 1 if you have the <sys/wait.h> header file. */
#cmakedefine HAVE_SYS_WAIT_H 1

/* Define if you have the tcmalloc memory allocation library */
#cmakedefine HAVE_TCMALLOC 1

/* Define to 1 if you have the `telldir' function. */
#cmakedefine HAVE_TELLDIR 1

/* Define to 1 if you have the `tempnam' function. */
#cmakedefine HAVE_TEMPNAM 1

/* Define to 1 if you have the <tiffconf.h> header file. */
#cmakedefine HAVE_TIFFCONF_H 1

/* Define to 1 if you have the `TIFFIsBigEndian' function. */
#cmakedefine HAVE_TIFFISBIGENDIAN 1

/* Define to 1 if you have the `TIFFIsCODECConfigured' function. */
#cmakedefine HAVE_TIFFISCODECCONFIGURED 1

/* Define to 1 if you have the `TIFFMergeFieldInfo' function. */
#cmakedefine HAVE_TIFFMERGEFIELDINFO 1

/* Define to 1 if you have the `TIFFReadEXIFDirectory' function. */
#cmakedefine HAVE_TIFFREADEXIFDIRECTORY 1

/* Define to 1 if you have the `TIFFReadGPSDirectory' function. */
#cmakedefine HAVE_TIFFREADGPSDIRECTORY 1

/* Define to 1 if you have the `TIFFSetErrorHandlerExt' function. */
#cmakedefine HAVE_TIFFSETERRORHANDLEREXT 1

/* Define to 1 if you have the `TIFFSetTagExtender' function. */
#cmakedefine HAVE_TIFFSETTAGEXTENDER 1

/* Define to 1 if you have the `TIFFSetWarningHandlerExt' function. */
#cmakedefine HAVE_TIFFSETWARNINGHANDLEREXT 1

/* Define to 1 if you have the `TIFFSwabArrayOfTriples' function. */
#cmakedefine HAVE_TIFFSWABARRAYOFTRIPLES 1

/* Define to 1 if you have the `times' function. */
#cmakedefine HAVE_TIMES 1

/* Define to 1 if your `struct tm' has `tm_zone'. Deprecated, use
   `HAVE_STRUCT_TM_TM_ZONE' instead. */
#cmakedefine HAVE_TM_ZONE 1

/* Define to 1 if you don't have `tm_zone' but do have the external array
   `tzname'. */
#cmakedefine HAVE_TZNAME 1

/* Define to 1 if the system has the type `uintmax_t'. */
#cmakedefine HAVE_UINTMAX_T 1

/* Define to 1 if the system has the type `uintptr_t'. */
#cmakedefine HAVE_UINTPTR_T 1

/* Define to 1 if you have the `ulltostr' function. */
#cmakedefine HAVE_ULLTOSTR 1

/* Define if you have umem memory allocation library */
#cmakedefine HAVE_UMEM 1

/* Define to 1 if you have the <unistd.h> header file. */
#cmakedefine HAVE_UNISTD_H 1

/* Define to 1 if the system has the type `unsigned long long int'. */
#cmakedefine HAVE_UNSIGNED_LONG_LONG_INT 1

/* Define to 1 if you have the `uselocale' function. */
#cmakedefine HAVE_USELOCALE 1

/* Define to 1 if you have the `usleep' function. */
#cmakedefine HAVE_USLEEP 1

/* Define to 1 if you have the `utime' function. */
#cmakedefine HAVE_UTIME 1

/* Define to 1 if you have the `utimensat' function. */
#cmakedefine HAVE_UTIMENSAT 1

/* Define to 1 if you have the <utime.h> header file. */
#cmakedefine HAVE_UTIME_H 1

/* Define to 1 if you have the `vfprintf' function. */
#cmakedefine HAVE_VFPRINTF 1

/* Define to 1 if you have the `vfprintf_l' function. */
#cmakedefine HAVE_VFPRINTF_L 1

/* Define to 1 if you have the `vsnprintf' function. */
#cmakedefine HAVE_VSNPRINTF 1

/* Define to 1 if you have the `vsnprintf_l' function. */
#cmakedefine HAVE_VSNPRINTF_L 1

/* Define to 1 if you have the `vsprintf' function. */
#cmakedefine HAVE_VSPRINTF 1

/* Define to 1 if you have the `waitpid' function. */
#cmakedefine HAVE_WAITPID 1

/* Define to 1 if you have the <wchar.h> header file. */
#cmakedefine HAVE_WCHAR_H 1

/* Define to 1 if you have the <windows.h> header file. */
#cmakedefine HAVE_WINDOWS_H 1

/* Define to 1 if you have the <xlocale.h> header file. */
#cmakedefine HAVE_XLOCALE_H 1

/* Define to 1 if you have the `_aligned_malloc' function. */
#cmakedefine HAVE__ALIGNED_MALLOC 1

/* Define to 1 if the system has the type `_Bool'. */
#cmakedefine HAVE__BOOL 1

/* Define to 1 if you have the `_exit' function. */
#cmakedefine HAVE__EXIT 1

/* Define to 1 if you have the `_NSGetExecutablePath' function. */
#cmakedefine HAVE__NSGETEXECUTABLEPATH 1

/* Define to 1 if you have the `_pclose' function. */
#cmakedefine HAVE__PCLOSE 1

/* Define to 1 if you have the `_popen' function. */
#cmakedefine HAVE__POPEN 1

/* Define to 1 if you have the `_wfopen' function. */
#cmakedefine HAVE__WFOPEN 1

/* Define to 1 if you have the `_wstat' function. */
#cmakedefine HAVE__WSTAT 1

/* define if your compiler has __attribute__ */
#cmakedefine HAVE___ATTRIBUTE__ 1

/* Define if you have libheif library */
#cmakedefine HEIC_DELEGATE 1

/* Directory where ImageMagick architecture headers live. */
#cmakedefine INCLUDEARCH_PATH "@INCLUDEARCH_PATH@"

/* Directory where ImageMagick headers live. */
#cmakedefine INCLUDE_PATH "@INCLUDE_PATH@"

/* ImageMagick is formally installed under prefix */
#cmakedefine INSTALLED_SUPPORT 1

/* Define if you have JBIG library */
#cmakedefine JBIG_DELEGATE 1

/* Define if you have JPEG library */
#cmakedefine JPEG_DELEGATE 1

/* Define if you have JXL library */
#cmakedefine JXL_DELEGATE 1

/* Define if you have LCMS library */
#cmakedefine LCMS_DELEGATE 1

/* Define if you have OPENJP2 library */
#cmakedefine LIBOPENJP2_DELEGATE 1

/* Directory where architecture-dependent files live. */
#cmakedefine LIBRARY_PATH "@LIBRARY_PATH@"

/* Subdirectory of lib where ImageMagick architecture dependent files are
   installed. */
#cmakedefine LIBRARY_RELATIVE_PATH "@LIBRARY_RELATIVE_PATH@"

/* Binaries in libraries path base name (will be during install linked to bin)
   */
#cmakedefine LIB_BIN_BASEDIRNAME "@LIB_BIN_BASEDIRNAME@"

/* Define if you have LQR library */
#cmakedefine LQR_DELEGATE 1

/* Define if using libltdl to support dynamically loadable modules and OpenCL
   */
#cmakedefine LTDL_DELEGATE 1

/* Native module suffix */
#cmakedefine LTDL_MODULE_EXT "@LTDL_MODULE_EXT@"

/* Define to the sub-directory where libtool stores uninstalled libraries. */
#cmakedefine LT_OBJDIR "@LT_OBJDIR@"

/* Define if you have LZMA library */
#cmakedefine LZMA_DELEGATE 1

/* Define to prepend to default font search path. */
#cmakedefine MAGICK_FONT_PATH "@MAGICK_FONT_PATH@"

/* Target Host CPU */
#cmakedefine MAGICK_TARGET_CPU "@MAGICK_TARGET_CPU@"

/* Target Host OS */
#cmakedefine MAGICK_TARGET_OS "@MAGICK_TARGET_OS@"

/* Target Host Vendor */
#cmakedefine MAGICK_TARGET_VENDOR "@MAGICK_TARGET_VENDOR@"

/* Module directory name without ABI part. */
#cmakedefine MODULES_BASEDIRNAME "@MODULES_BASEDIRNAME@"

/* Module directory dirname */
#cmakedefine MODULES_DIRNAME "@MODULES_DIRNAME@"

/* Magick API method prefix */
#cmakedefine NAMESPACE_PREFIX "@NAMESPACE_PREFIX@"

/* Magick API method prefix tag */
#cmakedefine NAMESPACE_PREFIX_TAG "@NAMESPACE_PREFIX_TAG@"

/* Define if you have OPENEXR library */
#cmakedefine OPENEXR_DELEGATE 1

/* Name of package */
#cmakedefine PACKAGE "@PACKAGE@"

/* Define to the address where bug reports for this package should be sent. */
#cmakedefine PACKAGE_BUGREPORT "@PACKAGE_BUGREPORT@"

/* Define to the full name of this package. */
#cmakedefine PACKAGE_NAME "@PACKAGE_NAME@"

/* Define to the full name and version of this package. */
#cmakedefine PACKAGE_STRING "@PACKAGE_STRING@"

/* Define to the one symbol short name of this package. */
#cmakedefine PACKAGE_TARNAME "@PACKAGE_TARNAME@"

/* Define to the home page for this package. */
#cmakedefine PACKAGE_URL "@PACKAGE_URL@"

/* Define to the version of this package. */
#cmakedefine PACKAGE_VERSION "@PACKAGE_VERSION@"

/* Define if you have PANGOCAIRO library */
#cmakedefine PANGOCAIRO_DELEGATE 1

/* Define if you have PANGO library */
#cmakedefine PANGO_DELEGATE 1

/* enable pipes (|) in filenames */
#cmakedefine PIPES_SUPPORT 1

/* Define if you have PNG library */
#cmakedefine PNG_DELEGATE 1

/* Define to necessary symbol if this constant uses a non-standard name on
   your system. */
#cmakedefine PTHREAD_CREATE_JOINABLE @PTHREAD_CREATE_JOINABLE@

/* Pixel cache memory threshold in MB (defaults to available memory) */
#cmakedefine PixelCacheThreshold @PixelCacheThreshold@

/* Number of bits in a pixel Quantum (8/16/32/64) */
#cmakedefine QUANTUM_DEPTH_OBSOLETE_IN_H @QUANTUM_DEPTH_OBSOLETE_IN_H@

/* Define if you have RAQM library */
#cmakedefine RAQM_DELEGATE 1

/* Define if you have LIBRAW library */
#cmakedefine RAW_R_DELEGATE 1

/* Define if you have RSVG library */
#cmakedefine RSVG_DELEGATE 1

/* Setjmp/longjmp are thread safe */
#cmakedefine SETJMP_IS_THREAD_SAFE 1

/* Sharearch directory name without ABI part. */
#cmakedefine SHAREARCH_BASEDIRNAME "@SHAREARCH_BASEDIRNAME@"

/* Sharearch directory dirname */
#cmakedefine SHAREARCH_DIRNAME "@SHAREARCH_DIRNAME@"

/* Directory where architecture-independent configuration files live. */
#cmakedefine SHARE_PATH "@SHARE_PATH@"

/* Subdirectory of lib where architecture-independent configuration files
   live. */
#cmakedefine SHARE_RELATIVE_PATH "@SHARE_RELATIVE_PATH@"

/* The size of `double', as computed by sizeof. */
#cmakedefine SIZEOF_DOUBLE @SIZEOF_DOUBLE@

/* The size of `double_t', as computed by sizeof. */
#cmakedefine SIZEOF_DOUBLE_T @SIZEOF_DOUBLE_T@

/* The size of `float', as computed by sizeof. */
#cmakedefine SIZEOF_FLOAT @SIZEOF_FLOAT@

/* The size of `float_t', as computed by sizeof. */
#cmakedefine SIZEOF_FLOAT_T @SIZEOF_FLOAT_T@

/* The size of `long double', as computed by sizeof. */
#cmakedefine SIZEOF_LONG_DOUBLE @SIZEOF_LONG_DOUBLE@

/* The size of `off_t', as computed by sizeof. */
#cmakedefine SIZEOF_OFF_T @SIZEOF_OFF_T@

/* The size of `signed int', as computed by sizeof. */
#cmakedefine SIZEOF_SIGNED_INT @SIZEOF_SIGNED_INT@

/* The size of `signed long', as computed by sizeof. */
#cmakedefine SIZEOF_SIGNED_LONG @SIZEOF_SIGNED_LONG@

/* The size of `signed long long', as computed by sizeof. */
#cmakedefine SIZEOF_SIGNED_LONG_LONG @SIZEOF_SIGNED_LONG_LONG@

/* The size of `signed short', as computed by sizeof. */
#cmakedefine SIZEOF_SIGNED_SHORT @SIZEOF_SIGNED_SHORT@

/* The size of `size_t', as computed by sizeof. */
#cmakedefine SIZEOF_SIZE_T @SIZEOF_SIZE_T@

/* The size of `ssize_t', as computed by sizeof. */
#cmakedefine SIZEOF_SSIZE_T @SIZEOF_SSIZE_T@

/* The size of `unsigned int', as computed by sizeof. */
#cmakedefine SIZEOF_UNSIGNED_INT @SIZEOF_UNSIGNED_INT@

/* The size of `unsigned int*', as computed by sizeof. */
#cmakedefine SIZEOF_UNSIGNED_INTP @SIZEOF_UNSIGNED_INTP@

/* The size of `unsigned long', as computed by sizeof. */
#cmakedefine SIZEOF_UNSIGNED_LONG @SIZEOF_UNSIGNED_LONG@

/* The size of `unsigned long long', as computed by sizeof. */
#cmakedefine SIZEOF_UNSIGNED_LONG_LONG @SIZEOF_UNSIGNED_LONG_LONG@

/* The size of `void *', as computed by sizeof. */
#cmakedefine SIZEOF_VOID_P @SIZEOF_VOID_P@

/* The size of `unsigned short', as computed by sizeof. */
#cmakedefine SIZEOF_UNSIGNED_SHORT @SIZEOF_UNSIGNED_SHORT@

/* Define to 1 if the `S_IS*' macros in <sys/stat.h> do not work properly. */
#cmakedefine STAT_MACROS_BROKEN 1

/* Define to 1 if all of the C90 standard headers exist (not just the ones
   required in a freestanding environment). This macro is provided for
   backward compatibility; new code need not use it. */
#cmakedefine STDC_HEADERS 1

/* Define to 1 if strerror_r returns char *. */
#cmakedefine STRERROR_R_CHAR_P 1

/* Define if you have POSIX threads libraries and header files. */
#cmakedefine THREAD_SUPPORT 1

/* Define if you have TIFF library */
#cmakedefine TIFF_DELEGATE 1

/* Define to 1 if your <sys/time.h> declares `struct tm'. */
#cmakedefine TM_IN_SYS_TIME 1

/* Enable extensions on AIX 3, Interix.  */
#ifndef _ALL_SOURCE
#cmakedefine _ALL_SOURCE 1
#endif
/* Enable general extensions on macOS.  */
#ifndef _DARWIN_C_SOURCE
#cmakedefine _DARWIN_C_SOURCE 1
#endif
/* Enable general extensions on Solaris.  */
#ifndef __EXTENSIONS__
#cmakedefine __EXTENSIONS__ 1
#endif
/* Enable GNU extensions on systems that have them.  */
#ifndef _GNU_SOURCE
#cmakedefine _GNU_SOURCE 1
#endif
/* Enable X/Open compliant socket functions that do not require linking
   with -lxnet on HP-UX 11.11.  */
#ifndef _HPUX_ALT_XOPEN_SOCKET_API
#cmakedefine _HPUX_ALT_XOPEN_SOCKET_API 1
#endif
/* Identify the host operating system as Minix.
   This macro does not affect the system headers' behavior.
   A future release of Autoconf may stop defining this macro.  */
#ifndef _MINIX
#cmakedefine _MINIX 1
#endif
/* Enable general extensions on NetBSD.
   Enable NetBSD compatibility extensions on Minix.  */
#ifndef _NETBSD_SOURCE
#cmakedefine _NETBSD_SOURCE 1
#endif
/* Enable OpenBSD compatibility extensions on NetBSD.
   Oddly enough, this does nothing on OpenBSD.  */
#ifndef _OPENBSD_SOURCE
#cmakedefine _OPENBSD_SOURCE 1
#endif
/* Define to 1 if needed for POSIX-compatible behavior.  */
#ifndef _POSIX_SOURCE
#cmakedefine _POSIX_SOURCE 1
#endif
/* Define to 2 if needed for POSIX-compatible behavior.  */
#ifndef _POSIX_1_SOURCE
#cmakedefine _POSIX_1_SOURCE 1
#endif
/* Enable POSIX-compatible threading on Solaris.  */
#ifndef _POSIX_PTHREAD_SEMANTICS
#cmakedefine _POSIX_PTHREAD_SEMANTICS 1
#endif
/* Enable extensions specified by ISO/IEC TS 18661-5:2014.  */
#ifndef __STDC_WANT_IEC_60559_ATTRIBS_EXT__
#cmakedefine __STDC_WANT_IEC_60559_ATTRIBS_EXT__ 1
#endif
/* Enable extensions specified by ISO/IEC TS 18661-1:2014.  */
#ifndef __STDC_WANT_IEC_60559_BFP_EXT__
#cmakedefine __STDC_WANT_IEC_60559_BFP_EXT__ 1
#endif
/* Enable extensions specified by ISO/IEC TS 18661-2:2015.  */
#ifndef __STDC_WANT_IEC_60559_DFP_EXT__
#cmakedefine __STDC_WANT_IEC_60559_DFP_EXT__ 1
#endif
/* Enable extensions specified by ISO/IEC TS 18661-4:2015.  */
#ifndef __STDC_WANT_IEC_60559_FUNCS_EXT__
#cmakedefine __STDC_WANT_IEC_60559_FUNCS_EXT__ 1
#endif
/* Enable extensions specified by ISO/IEC TS 18661-3:2015.  */
#ifndef __STDC_WANT_IEC_60559_TYPES_EXT__
#cmakedefine __STDC_WANT_IEC_60559_TYPES_EXT__ 1
#endif
/* Enable extensions specified by ISO/IEC TR 24731-2:2010.  */
#ifndef __STDC_WANT_LIB_EXT2__
#cmakedefine __STDC_WANT_LIB_EXT2__ 1
#endif
/* Enable extensions specified by ISO/IEC 24747:2009.  */
#ifndef __STDC_WANT_MATH_SPEC_FUNCS__
#cmakedefine __STDC_WANT_MATH_SPEC_FUNCS__ 1
#endif
/* Enable extensions on HP NonStop.  */
#ifndef _TANDEM_SOURCE
#cmakedefine _TANDEM_SOURCE 1
#endif
/* Enable X/Open extensions.  Define to 500 only if necessary
   to make mbstate_t available.  */
#ifndef _XOPEN_SOURCE
#cmakedefine _XOPEN_SOURCE 1
#endif


/* Version number of package */
#cmakedefine VERSION "@VERSION@"

/* Define if you have WEBPMUX library */
#cmakedefine WEBPMUX_DELEGATE 1

/* Define if you have WEBP library */
#cmakedefine WEBP_DELEGATE 1

/* Define to use the Windows GDI32 library */
#cmakedefine WINGDI32_DELEGATE 1

/* Define if using the dmalloc debugging malloc package */
#cmakedefine WITH_DMALLOC 1

/* Define if you have WMF library */
#cmakedefine WMF_DELEGATE 1

/* Define WORDS_BIGENDIAN to 1 if your processor stores words with the most
   significant byte first (like Motorola and SPARC, unlike Intel). */
#if defined AC_APPLE_UNIVERSAL_BUILD
# if defined __BIG_ENDIAN__
#  define WORDS_BIGENDIAN 1
# endif
#else
# ifndef WORDS_BIGENDIAN
#cmakedefine WORDS_BIGENDIAN 1
# endif
#endif

/* Location of X11 configure files */
#cmakedefine X11_CONFIGURE_PATH "@X11_CONFIGURE_PATH@"

/* Define if you have X11 library */
#cmakedefine X11_DELEGATE 1

/* Define if you have XML library */
#cmakedefine XML_DELEGATE 1

/* Define to 1 if the X Window System is missing or not being used. */
#cmakedefine X_DISPLAY_MISSING 1

/* Build self-contained, embeddable, zero-configuration ImageMagick */
#cmakedefine ZERO_CONFIGURATION_SUPPORT 1

/* Define if you have ZIP library */
#cmakedefine ZIP_DELEGATE 1

/* Define if you have ZLIB library */
#cmakedefine ZLIB_DELEGATE 1

/* Define if you have ZSTD library */
#cmakedefine ZSTD_DELEGATE 1

/* Number of bits in a file offset, on hosts where this is settable. */
#cmakedefine _FILE_OFFSET_BITS @_FILE_OFFSET_BITS@

/* enable run-time bounds-checking */
#cmakedefine _FORTIFY_SOURCE 1

/* Define to 1 to make fseeko visible on some hosts (e.g. glibc 2.2). */
#cmakedefine _LARGEFILE_SOURCE 1

/* Define for large files, on AIX-style hosts. */
#cmakedefine _LARGE_FILES 1

/* Define this for the OpenCL Accelerator */
#cmakedefine _OPENCL 1

/* Define for Solaris 2.5.1 so the uint32_t typedef from <sys/synch.h>,
   <pthread.h>, or <semaphore.h> is not used. If the typedef were allowed, the
   #define below would cause a syntax error. */
#cmakedefine _UINT32_T 1

/* Define for Solaris 2.5.1 so the uint64_t typedef from <sys/synch.h>,
   <pthread.h>, or <semaphore.h> is not used. If the typedef were allowed, the
   #define below would cause a syntax error. */
#cmakedefine _UINT64_T 1

/* Define for Solaris 2.5.1 so the uint8_t typedef from <sys/synch.h>,
   <pthread.h>, or <semaphore.h> is not used. If the typedef were allowed, the
   #define below would cause a syntax error. */
#cmakedefine _UINT8_T 1

/* Define to 1 if type `char' is unsigned and your compiler does not
   predefine this macro.  */
#ifndef __CHAR_UNSIGNED__
#cmakedefine __CHAR_UNSIGNED__ 1
#endif

/* Define to appropriate substitute if compiler does not have __func__ */
#cmakedefine __func__ @__func__@

/* Define to empty if `const' does not conform to ANSI C. */
#cmakedefine const @const@

/* Define to `int' if <sys/types.h> doesn't define. */
#cmakedefine gid_t @gid_t@

/* Define to `__inline__' or `__inline' if that's what the C compiler
   calls it, or to nothing if 'inline' is not supported under any name.  */
#ifndef __cplusplus
#cmakedefine inline @inline@
#endif

/* Define to the type of a signed integer type of width exactly 16 bits if
   such a type exists and the standard includes do not define it. */
#cmakedefine int16_t @int16_t@

/* Define to the type of a signed integer type of width exactly 32 bits if
   such a type exists and the standard includes do not define it. */
#cmakedefine int32_t @int32_t@

/* Define to the type of a signed integer type of width exactly 64 bits if
   such a type exists and the standard includes do not define it. */
#cmakedefine int64_t @int64_t@

/* Define to the type of a signed integer type of width exactly 8 bits if such
   a type exists and the standard includes do not define it. */
#cmakedefine int8_t @int8_t@

/* Define to the widest signed integer type if <stdint.h> and <inttypes.h> do
   not define. */
#cmakedefine intmax_t @intmax_t@

/* Define to the type of a signed integer type wide enough to hold a pointer,
   if such a type exists, and if the system does not define it. */
#cmakedefine intptr_t @intptr_t@

/* Define to a type if <wchar.h> does not define. */
#cmakedefine mbstate_t @mbstate_t@

/* Define to `int' if <sys/types.h> does not define. */
#cmakedefine mode_t @mode_t@

/* Define to `long int' if <sys/types.h> does not define. */
#cmakedefine off_t @off_t@

/* Define as a signed integer type capable of holding a process identifier. */
#cmakedefine pid_t @pid_t@

/* Define to the equivalent of the C99 'restrict' keyword, or to
   nothing if this is not supported.  Do not define if restrict is
   supported only directly.  */
#cmakedefine restrict @restrict@
/* Work around a bug in older versions of Sun C++, which did not
   #define __restrict__ or support _Restrict or __restrict__
   even though the corresponding Sun C compiler ended up with
   "#define restrict _Restrict" or "#define restrict __restrict__"
   in the previous line.  This workaround can be removed once
   we assume Oracle Developer Studio 12.5 (2016) or later.  */
#if defined __SUNPRO_CC && !defined __RESTRICT && !defined __restrict__
# define _Restrict
# define __restrict__
#endif

/* Define to `unsigned int' if <sys/types.h> does not define. */
#cmakedefine size_t @size_t@

/* Define to `int' if <sys/types.h> does not define. */
#cmakedefine ssize_t @ssize_t@

/* Define to `int' if <sys/types.h> doesn't define. */
#cmakedefine uid_t @uid_t@

/* Define to the type of an unsigned integer type of width exactly 16 bits if
   such a type exists and the standard includes do not define it. */
#cmakedefine uint16_t @uint16_t@

/* Define to the type of an unsigned integer type of width exactly 32 bits if
   such a type exists and the standard includes do not define it. */
#cmakedefine uint32_t @uint32_t@

/* Define to the type of an unsigned integer type of width exactly 64 bits if
   such a type exists and the standard includes do not define it. */
#cmakedefine uint64_t @uint64_t@

/* Define to the type of an unsigned integer type of width exactly 8 bits if
   such a type exists and the standard includes do not define it. */
#cmakedefine uint8_t @uint8_t@

/* Define to the widest unsigned integer type if <stdint.h> and <inttypes.h>
   do not define. */
#cmakedefine uintmax_t @uintmax_t@

/* Define to the type of an unsigned integer type wide enough to hold a
   pointer, if such a type exists, and if the system does not define it. */
#cmakedefine uintptr_t @uintptr_t@

/* Define to empty if the keyword `volatile' does not work. Warning: valid
   code using `volatile' can become incorrect without. Disable with care. */
#cmakedefine volatile @volatile@
