#  Copyright 1999 ImageMagick Studio LLC, a non-profit organization
#  dedicated to making software imaging solutions freely available.
#
#  You may not use this file except in compliance with the License.  You may
#  obtain a copy of the License at
#
#    https://imagemagick.org/script/license.php
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

include(${CMAKE_CURRENT_LIST_DIR}/checks.cmake)
magick_check_env()

include(${CMAKE_CURRENT_LIST_DIR}/parse_version.cmake)

set(CC ${CMAKE_C_COMPILER})
set(CONFIGURE_ARGS)
set(CXX ${CMAKE_CXX_COMPILER})
set(CXXFLAGS)
set(DEFS)
set(DISTCHECK_CONFIG_FLAGS)
set(MAGICK_CFLAGS)
set(MAGICK_CPPFLAGS)
set(MAGICK_LDFLAGS)
set(MAGICK_LIBS)
set(MAGICK_PCFLAGS)
set(MAGICK_SECURITY_POLICY ${SECURITY_POLICY})
set(QUANTUM_DEPTH ${MAGICKCORE_QUANTUM_DEPTH})

# TODO
# set(MAGICK_DELEGATES)
# set(MAGICK_FEATURES)

# Set if pipe (|) is enabled on filenames
# TODO Add linux and mac os X
# TODO maybe this would be better with a test somehow
if(WIN32)
  set(PIPES_SUPPORT FALSE)
endif()

# Check if we are on AIX, do the _ALL_SOURCE magic
if(AIX)
  set(_ALL_SOURCE 1)
  set(_LARGE_FILES 1)
endif()

# Check if we're on Solaris
IF(SOLARIS)
  set(_POSIX_PTHREAD_SEMANTICS TRUE)
  set(__EXTENSIONS__ TRUE)
  # TODO restrict the system version and check if the define should be these
  set(_UINT32_T uint32_t)
  set(_UINT64_T uint64_t)
  set(_UINT8_T uint8_t)
endif()

# TODO Not sure how to test this, so for now it's disabled
set(_TANDEM_SOURCE FALSE)

# TODO check if this is supposed to be any of the ones defined https://cmake.org/cmake/help/v3.0/module/FindX11.html
set(X11_CONFIGURE_PATH)

# TODO should this be an option ??
set(X_DISPLAY_MISSING 1)

# TODO does this suffice?
if(CMAKE_SYSTEM_NAME STREQUAL "Linux" OR MINGW)
  set(_FILE_OFFSET_BITS 64)
  set(_LARGEFILE_SOURCE 1)
else()
  # Not sure on Windows if code is made to work with 64 bits
  set(_FILE_OFFSET_BITS 32)
endif()

# Disable run-time bounds-checking
set(_FORTIFY_SOURCE FALSE)

# Build a version of ImageMagick which operates uninstalled.
# Used to build distributions located via MAGICK_HOME / executable path
set(INSTALLED_SUPPORT)

if(${MAGICKCORE_QUANTUM_DEPTH} EQUAL 8)
  set(MagickQuantumDepth "Q8")
elseif(${MAGICKCORE_QUANTUM_DEPTH} EQUAL 16)
  set(MagickQuantumDepth "Q16")
elseif(${MAGICKCORE_QUANTUM_DEPTH} EQUAL 32)
  set(MagickQuantumDepth "Q32")
elseif(${MAGICKCORE_QUANTUM_DEPTH} EQUAL 64)
  set(MagickQuantumDepth "Q64")
else()
  set(MagickQuantumDepth "Q?")
endif()

####### PATHS #######
include(GNUInstallDirs)

set(RELATIVE_PATH ${PACKAGE_NAME}-${PACKAGE_MAJOR_VERSION})
set(MAGICK_ABI_SUFFIX ${MagickQuantumDepth}${HDRI_SUFFIX})

set(CONFIGURE_PATH ${CMAKE_INSTALL_SYSCONFDIR}/${RELATIVE_PATH} CACHE INTERNAL "Installation path for configuration files")
set(CONFIGURE_RELATIVE_PATH ${RELATIVE_PATH})
set(DOCUMENTATION_RELATIVE_PATH ${RELATIVE_PATH})
set(DOCUMENTATION_PATH ${CMAKE_INSTALL_DOCDIR}/${RELATIVE_PATH})
set(EXECUTABLE_PATH ${CMAKE_INSTALL_BINDIR})
set(EXEC_PREFIX_DIR ${CMAKE_INSTALL_PREFIX})
set(INCLUDEARCH_PATH ${CMAKE_INSTALL_INCLUDEDIR}/${RELATIVE_PATH})
set(INCLUDE_RELATIVE_PATH ${RELATIVE_PATH})
set(INCLUDE_PATH ${CMAKE_INSTALL_INCLUDEDIR}/${RELATIVE_PATH})
set(LIBRARY_PATH ${RELATIVE_PATH})
set(LIBRARY_RELATIVE_PATH ${RELATIVE_PATH})
set(LIB_BIN_BASEDIRNAME ${CMAKE_INSTALL_BINDIR})
set(LT_OBJDIR)
set(LTDL_MODULE_EXT)
set(MODULES_BASEDIRNAME modules)
set(MODULES_DIRNAME ${MODULES_BASEDIRNAME}-${MAGICK_ABI_SUFFIX})
set(MODULES_PATH ${CMAKE_INSTALL_LIBDIR}/${RELATIVE_PATH}/${MODULES_DIRNAME} CACHE INTERNAL "Installation path for modules")
set(PREFIX_DIR ${CMAKE_INSTALL_PREFIX})
set(SHAREARCH_BASEDIRNAME config)
set(SHAREARCH_DIRNAME ${SHAREARCH_BASEDIRNAME}-${MAGICK_ABI_SUFFIX})
set(SHAREARCH_PATH ${CMAKE_INSTALL_LIBDIR}/${PACKAGE_NAME}-${MAGICK_BASE_VERSION}/${SHAREARCH_DIRNAME} CACHE INTERNAL "Installation path for platform-dependent data")
set(SHARE_PATH ${CMAKE_INSTALL_DATAROOTDIR}/${RELATIVE_PATH} CACHE INTERNAL "Installation path for platform-independent data")
set(SHARE_RELATIVE_PATH ${RELATIVE_PATH})

set(CODER_DIRNAME coders)
set(CODER_PATH ${MODULES_PATH}/${CODER_DIRNAME})
set(FILTER_DIRNAME filters)
set(FILTER_PATH ${MODULES_PATH}/${FILTER_DIRNAME})

# rc files are only used on Windows binaries
if(WIN32)
  set(MagickLibVersionNumber ${MAGICK_LIB_VERSION_NUMBER})
  set(MagickLibVersionText ${MAGICK_LIB_VERSION_TEXT})

  if(${CMAKE_SIZEOF_VOID_P} EQUAL 4)
    set(MagickPlatform "x86")
  elseif(${CMAKE_SIZEOF_VOID_P} EQUAL 8)
    set(MagickPlatform "x64")
  else()
    set(MagickPlatform ${MAGICK_TARGET_CPU})
  endif()

  # Read the version.h file so we can get some needed values using regex
  file(READ ${CMAKE_SOURCE_DIR}/MagickCore/version.h.in CONTENT_VERSION_H)

  # Try to find `MagickCopyright'
  string(REGEX MATCH "\n#define +MagickCopyright +\"([^\"]+)\"\n" FOUND_MAGICK_COPYRIGHT ${CONTENT_VERSION_H})
  if(FOUND_MAGICK_COPYRIGHT)
    set(MagickCopyright \"${CMAKE_MATCH_1}\")
  endif()

  # Try to find `MagickAuthoritativeURL'
  string(REGEX MATCH "\n#define +MagickAuthoritativeURL +\"([^\"]+)\"\n" FOUND_MAGICK_AUTHORITATIVE_URL ${CONTENT_VERSION_H})
  if(FOUND_MAGICK_AUTHORITATIVE_URL)
    set(MagickAuthoritativeURL ${CMAKE_MATCH_1})
  endif()

  set(MagickVersion "${PACKAGE_NAME} ${MAGICK_LIB_VERSION_TEXT}${PACKAGE_VERSION_ADDENDUM} ${MagickQuantumDepth} ${MagickPlatform} ${PACKAGE_RELEASE_DATE} ${MagickAuthoritativeURL}")
endif()

# Set the default font search path
if(WIN32)
  set(MAGICK_FONT_PATH "$ENV{WINDIR}\\FONTS\\")
  # Escape the path C way where '\' must be '\\' (regex and cmake also escapes '\' so to find one we need '\\\\')
  string(REGEX REPLACE "\\\\" "\\\\\\\\" MAGICK_FONT_PATH ${MAGICK_FONT_PATH})
elseif(UNIX AND NOT APPLE)
  set(MAGICK_FONT_PATH "/usr/share/fonts/")
elseif(APPLE)
  set(MAGICK_FONT_PATH "/System/Library/Fonts/")
endif()

set(MAGICK_FONT_PATH "${MAGICK_FONT_PATH}" CACHE STRING "Font search path")

set(apple_font_dir "${MAGICK_FONT_PATH}" CACHE STRING "Apple font directory")
set(dejavu_font_dir "${MAGICK_FONT_PATH}" CACHE STRING "DejaVu font directory")
set(ghostscript_font_dir "${MAGICK_FONT_PATH}" CACHE STRING "Ghostscript font directory")
set(urw_base35_font_dir "${MAGICK_FONT_PATH}" CACHE STRING "URW base35 font directory")
set(windows_font_dir "${MAGICK_FONT_PATH}" CACHE STRING "Windows font directory")

set(type_include_files)
if(apple_font_dir)
  set(type_include_files "${type_include_files} <include file=\"type-apple.xml\" />")
endif()
if(dejavu_font_dir)
  set(type_include_files "${type_include_files} <include file=\"type-dejavu.xml\" />")
endif()
if(ghostscript_font_dir)
  set(type_include_files "${type_include_files} <include file=\"type-ghostscript.xml\" />")
endif()
if(urw_base35_font_dir)
  set(type_include_files "${type_include_files} <include file=\"type-urw-base35.xml\" />")
endif()
if(windows_font_dir)
  set(type_include_files "${type_include_files} <include file=\"type-windows.xml\" />")
endif()

set(BPGDecodeDelegate bpgdec CACHE STRING "BPG decode delegate")
set(BPGEncodeDelegate bpgenc CACHE STRING "BPG encode delegate")
set(BlenderDecodeDelegate blender CACHE STRING "Blender decode delegate")
set(BrowseDelegate xdg-open CACHE STRING "Browse delegate")
set(CCMALLOCDelegate ccmalloc CACHE STRING "CCMalloc delegate")
set(ConvertDelegate magick CACHE STRING "Convert delegate")
set(DNGDecodeDelegate ufraw-batch CACHE STRING "DNG decode delegate")
set(DOCDecodeDelegate libreoffice CACHE STRING "DOC decode delegate")
set(DVIDecodeDelegate dvips CACHE STRING "DVI decode delegate")
set(DisplayDelegate magick CACHE STRING "Display delegate")
set(EditorDelegate xterm CACHE STRING "Editor delegate")
set(Fig2devDelegate fig2dev CACHE STRING "Fig2dev delegate")
set(GVCDecodeDelegate dot CACHE STRING "GVC decode delegate")
set(HPGLDecodeDelegate hp2xx CACHE STRING "HPGL decode delegate")
set(HTMLDecodeDelegate html2ps CACHE STRING "HTML decode delegate")
set(ILBMDecodeDelegate ilbmtoppm CACHE STRING "ILBM decode delegate")
set(ILBMEncodeDelegate ppmtoilbm CACHE STRING "ILBM encode delegate")
set(JXRDecodeDelegate JxrDecApp CACHE STRING "JXR decode delegate")
set(JXREncodeDelegate JxrEncApp CACHE STRING "JXR encode delegate")
set(LEPDelegate lepton CACHE STRING "LEP delegate")
set(LPDelegate lp CACHE STRING "LP delegate")
set(LPRDelegate lpr CACHE STRING "LPR delegate")
set(LaunchDelegate gimp CACHE STRING "Launch delegate")
set(MVDelegate mv CACHE STRING "MV delegate")
set(MogrifyDelegate magick CACHE STRING "Mogrify delegate")
set(MrSIDDecodeDelegate mrsidgeodecode CACHE STRING "MrSID decode delegate")
set(PCLDelegate pcl6 CACHE STRING "PCL delegate")
set(PrintDelegate lpr CACHE STRING "Print delegate")
set(RMDelegate rm CACHE STRING "RM delegate")
set(RSVGDecodeDelegate rsvg-convert CACHE STRING "RSVG decode delegate")
set(SVGDecodeDelegate inkscape CACHE STRING "SVG decode delegate")
set(ShowImageDelegate display CACHE STRING "ShowImage delegate")
set(TextEncodeDelegate tesseract CACHE STRING "Text encode delegate")
set(TraceEncodeDelegate potrace CACHE STRING "Trace encode delegate")
set(VIDEODecodeDelegate ffmpeg CACHE STRING "Video decode delegate")
set(VIDEOEncodeDelegate ffmpeg CACHE STRING "Video encode delegate")
set(WWWDecodeDelegate curl CACHE STRING "WWW decode delegate")
set(WebPDecodeDelegate dwebp CACHE STRING "WebP decode delegate")
set(WebPEncodeDelegate cwebp CACHE STRING "WebP encode delegate")
set(XPSDelegate gxps CACHE STRING "XPS delegate")

if(WIN32)
  set(PSDelegate gswin32c)
else()
  set(PSDelegate gs)
endif()

set(GSAlphaDevice pngalpha CACHE STRING "Ghostscript alpha device")
set(GSCMYKDevice pamcmyk32 CACHE STRING "Ghostscript CMYK device")
set(GSColorDevice png16m CACHE STRING "Ghostscript color device")
set(GSEPSDevice eps2write CACHE STRING "Ghostscript EPS device")
set(GSMonoDevice pbmraw CACHE STRING "Ghostscript mono device")
set(GSPDFDevice pdfwrite CACHE STRING "Ghostscript PDF device")
set(GSPSDevice ps2write CACHE STRING "Ghostscript PS device")
set(PCLCMYKDevice pamcmyk32 CACHE STRING "PCL CMYK device")
set(PCLColorDevice ppmraw CACHE STRING "PCL color device")
set(PCLMonoDevice pbmraw CACHE STRING "PCL mono device")
set(XPSCMYKDevice bmpsep8 CACHE STRING "XPS CMYK device")
set(XPSColorDevice ppmraw CACHE STRING "XPS color device")
set(XPSMonoDevice pbmraw CACHE STRING "XPS mono device")
