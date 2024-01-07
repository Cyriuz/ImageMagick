macro(magick_find_delegate)
  cmake_parse_arguments(MAGICK_FIND "" "DELEGATE;NAME;DEFAULT" "TARGETS" ${ARGN})

  if((NOT DEFINED ${MAGICK_FIND_DELEGATE} AND ${MAGICK_FIND_DEFAULT}) OR "${${MAGICK_FIND_DELEGATE}}")
    find_package(${MAGICK_FIND_NAME} REQUIRED)
    set(${MAGICK_FIND_DELEGATE} ${${MAGICK_FIND_NAME}_FOUND})
    string(TOUPPER ${MAGICK_FIND_NAME} _NAME_UPPER)
    set(${_NAME_UPPER}_FOUND ${${MAGICK_FIND_NAME}_FOUND})
    if(${MAGICK_FIND_DELEGATE})
      message("Delegate ${MAGICK_FIND_NAME} found.")
      if(MAGICK_FIND_TARGETS)
        set(IMAGEMAGICK_DELEGATES_LIBRARIES ${IMAGEMAGICK_DELEGATES_LIBRARIES} ${MAGICK_FIND_TARGETS})
      else()
        set(IMAGEMAGICK_DELEGATES_LIBRARIES ${IMAGEMAGICK_DELEGATES_LIBRARIES} ${MAGICK_FIND_NAME}::${MAGICK_FIND_NAME})
      endif()
    else()
      message("Delegate ${MAGICK_FIND_NAME} disabled. (Not found)")
    endif()
  else()
    set(${MAGICK_FIND_DELEGATE} FALSE)
    message("Delegate ${MAGICK_FIND_NAME} disabled.")
  endif()
endmacro()

include(CheckIncludeFile)
include(CheckLibraryExists)
include(CheckSymbolExists)

magick_find_delegate(DELEGATE BZLIB_DELEGATE NAME BZip2 DEFAULT TRUE)
magick_find_delegate(DELEGATE LZMA_DELEGATE NAME LibLZMA DEFAULT TRUE)
magick_find_delegate(DELEGATE ZLIB_DELEGATE NAME ZLIB DEFAULT TRUE)
magick_find_delegate(DELEGATE ZSTD_DELEGATE NAME zstd DEFAULT TRUE)
magick_find_delegate(DELEGATE FREETYPE_DELEGATE NAME Freetype DEFAULT TRUE)
magick_find_delegate(DELEGATE XML_DELEGATE NAME LibXml2 DEFAULT TRUE)

magick_find_delegate(DELEGATE OPENMP_SUPPORT NAME OpenMP DEFAULT TRUE TARGETS OpenMP::OpenMP_C)
if(OPENMP_SUPPORT)
  add_compile_definitions(_OPENMP=${OpenMP_C_SPEC_DATE})
endif()

magick_find_delegate(DELEGATE THREADS_SUPPORT NAME Threads DEFAULT TRUE TARGETS)
if(CMAKE_USE_PTHREADS_INIT)
  set(THREAD_SUPPORT TRUE)
  set(CMAKE_THREAD_PREFER_PTHREAD TRUE)
  set(THREADS_PREFER_PTHREAD_FLAG TRUE)
  set(IMAGEMAGICK_DELEGATES_LIBRARIES ${IMAGEMAGICK_DELEGATES_LIBRARIES} Threads::Threads)
endif()
check_include_file(pthread.h HAVE_PTHREAD_H)
if(HAVE_PTHREAD_H)
  check_library_exists(pthread pthread_create "" HAVE_PTHREAD)
  check_symbol_exists(PTHREAD_PRIO_INHERIT pthread.h HAVE_PTHREAD_PRIO_INHERIT)
endif()
# TODO Not sure what to do here
set(PTHREAD_CREATE_JOINABLE "")

magick_find_delegate(DELEGATE TIFF_DELEGATE NAME TIFF DEFAULT TRUE)
if(TIFF_FOUND)
  set(HAVE_TIFFCONF_H 1)
  set(HAVE_TIFFISBIGENDIAN 1)
  set(HAVE_TIFFISCODECCONFIGURED 1)
  set(HAVE_TIFFMERGEFIELDINFO 1)
  set(HAVE_TIFFREADEXIFDIRECTORY 1)
  set(HAVE_TIFFREADGPSDIRECTORY 1)
  set(HAVE_TIFFSETERRORHANDLEREXT 1)
  set(HAVE_TIFFSETTAGEXTENDER 1)
  set(HAVE_TIFFSETWARNINGHANDLEREXT 1)
  set(HAVE_TIFFSWABARRAYOFTRIPLES 1)
endif()
magick_find_delegate(DELEGATE LCMS_DELEGATE NAME lcms DEFAULT TRUE)
if(LCMS_FOUND)
  set(HAVE_LCMS2_H 1)
endif()
magick_find_delegate(DELEGATE RAW_R_DELEGATE NAME libraw DEFAULT TRUE)
if(LIBRAW_FOUND)
  set(HAVE_LIBRAW_LIBRAW_H 1)
endif()
magick_find_delegate(DELEGATE HEIC_DELEGATE NAME libheif DEFAULT TRUE)
if(LIBHEIF_FOUND)
  set(HAVE_LIBHEIF_LIBHEIF_H 1)
endif()

magick_find_delegate(DELEGATE JBIG_DELEGATE NAME JBIG DEFAULT TRUE)
magick_find_delegate(DELEGATE JPEG_DELEGATE NAME JPEG DEFAULT TRUE)
magick_find_delegate(DELEGATE LIBOPENJP2_DELEGATE NAME OpenJPEG DEFAULT TRUE)
magick_find_delegate(DELEGATE OPENEXR_DELEGATE NAME OpenEXR DEFAULT TRUE)
magick_find_delegate(DELEGATE PNG_DELEGATE NAME PNG DEFAULT TRUE)
magick_find_delegate(DELEGATE RSVG_DELEGATE NAME Rsvg DEFAULT TRUE)
magick_find_delegate(DELEGATE WEBP_DELEGATE NAME WebP DEFAULT TRUE)
magick_find_delegate(DELEGATE JXL_DELEGATE NAME libjxl DEFAULT TRUE)

# TODO are these correct and should they be off by default?
magick_find_delegate(DELEGATE AUTOTRACE_DELEGATE NAME AUTOTRACE DEFAULT FALSE)
magick_find_delegate(DELEGATE CAIRO_DELEGATE NAME Cairo DEFAULT FALSE)
magick_find_delegate(DELEGATE DMR_DELEGATE NAME MagickCache DEFAULT FALSE)
magick_find_delegate(DELEGATE DJVU_DELEGATE NAME DJVU DEFAULT FALSE)
magick_find_delegate(DELEGATE DPS_DELEGATE NAME DPS DEFAULT FALSE)
magick_find_delegate(DELEGATE FFTW_DELEGATE NAME FFTW DEFAULT FALSE)
magick_find_delegate(DELEGATE FLIF_DELEGATE NAME FLIF DEFAULT FALSE)
magick_find_delegate(DELEGATE FONTCONFIG_DELEGATE NAME Fontconfig DEFAULT FALSE)
magick_find_delegate(DELEGATE FPX_DELEGATE NAME FlashPIX DEFAULT FALSE)
magick_find_delegate(DELEGATE GS_DELEGATE NAME Ghostscript DEFAULT FALSE)
magick_find_delegate(DELEGATE GVC_DELEGATE NAME GVC DEFAULT FALSE)
magick_find_delegate(DELEGATE LTDL_DELEGATE NAME LTDL DEFAULT FALSE)
# TODO
set(LTDL_MODULE_EXT "")
magick_find_delegate(DELEGATE PANGO_DELEGATE NAME Pango DEFAULT FALSE)
magick_find_delegate(DELEGATE PANGOCAIRO_DELEGATE NAME PangoCairo DEFAULT FALSE)
magick_find_delegate(DELEGATE RAQM_DELEGATE NAME RAQM DEFAULT FALSE)
magick_find_delegate(DELEGATE WEBPMUX_DELEGATE NAME WEBPMUX DEFAULT FALSE)
magick_find_delegate(DELEGATE WMF_DELEGATE NAME WMF DEFAULT FALSE)
magick_find_delegate(DELEGATE LQR NAME Lqr DEFAULT FALSE)

magick_find_delegate(DELEGATE HAVE_JEMALLOC NAME Jemalloc DEFAULT FALSE)
magick_find_delegate(DELEGATE HAVE_MTMALLOC NAME MTMalloc DEFAULT FALSE)
magick_find_delegate(DELEGATE HAVE_TCMALLOC NAME TCMalloc DEFAULT FALSE)
magick_find_delegate(DELEGATE HAVE_UMEM NAME UMEM DEFAULT FALSE)

magick_find_delegate(DELEGATE OPENCLLIB_DELEGATE NAME OpenCL DEFAULT FALSE)
if(OpenCL_FOUND)
  set(_OPENCL 1)
  set(CMAKE_REQUIRED_INCLUDES ${OpenCL_INCLUDE_DIRS})
  check_include_file(OpenCL/cl.h HAVE_OPENCL_CL_H)
  check_include_file(CL/cl.h HAVE_CL_CL_H)
  # Set the target OpenCL version explicitly to silence warnings
  set(TARGET_OPENCL_VERSION 300 CACHE STRING "OpenCL version to target (defaults to 3.0)")
  add_compile_definitions(CL_TARGET_OPENCL_VERSION=${TARGET_OPENCL_VERSION})
endif()

# TODO Should we check if gdi32 exists if windows?
if(WIN32)
  set(WINGDI32_DELEGATE TRUE)
endif()

# Compile with X11 if present
magick_find_delegate(DELEGATE X11_DELEGATE NAME X11 DEFAULT TRUE)
if(X11_DELEGATE)
  set(IMAGEMAGICK_DELEGATES_LIBRARIES ${IMAGEMAGICK_DELEGATES_LIBRARIES} X11::Xext)
endif()
