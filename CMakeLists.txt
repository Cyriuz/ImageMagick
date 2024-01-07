#   Licensed under the ImageMagick License (the "License"); you may not use
#   this file except in compliance with the License.  You may obtain a copy
#   of the License at
#
#     https://imagemagick.org/script/license.php
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
#   WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
#   License for the specific language governing permissions and limitations
#   under the License.
#
#   CMake script file to build ImageMagick
#
cmake_minimum_required(VERSION 3.19.0)
project(ImageMagick LANGUAGES C)

include(cmake/platform_vars.cmake)

####### OPTIONS #######
set(MAGICKCORE_QUANTUM_DEPTH "16" CACHE STRING "Number of bits in a pixel Quantum")
set_property(CACHE MAGICKCORE_QUANTUM_DEPTH PROPERTY STRINGS "8;16;32;64")
option(MAGICK_BUILD_STATIC "Build ImageMagick statically" FALSE)
option(MAGICK_HDRI_ENABLE "Build ImageMagick with High dynamic-range imaging" TRUE)
option(BUILD_MAGICKPP "Enable build/install of Magick++" TRUE)
option(BUILD_UTILITIES "Enable build/install of command-line utilities" TRUE)
option(BUILD_TESTS "Build test executables" TRUE)
option(BUILD_MODULES "Compile coders and filters as modules" FALSE) # TODO
option(CIPHER_SUPPORT "Permit enciphering and deciphering image pixels" TRUE)
option(EXCLUDE_DEPRECATED "Exclude deprecated methods" TRUE)
set(NAMESPACE_PREFIX "" CACHE STRING "Prefix MagickCore API methods")
set(PixelCacheThreshold "" CACHE STRING "Set pixel cache threshold in MB (default available memory)")
option(WITH_DMALLOC "Use dmalloc for memory profiling" FALSE)
option(ZERO_CONFIGURATION_SUPPORT "Build self-contained, embeddable, zero-configuration ImageMagick" FALSE)
option(DPC_SUPPORT "Enable distributed pixel cache support" TRUE)
option(WITH_64BIT_CHANNEL_MASK_SUPPORT "Enable 64-bit channel masks" FALSE)
set(SECURITY_POLICY "open" CACHE STRING "Set the security policy variant to enforce")
set_property(CACHE SECURITY_POLICY PROPERTY STRINGS "open;limited;secure;websafe")

add_compile_definitions(MAGICKCORE_QUANTUM_DEPTH=${MAGICKCORE_QUANTUM_DEPTH})
set(QUANTUM_DEPTH_OBSOLETE_IN_H ${MAGICKCORE_QUANTUM_DEPTH})

if(MAGICK_BUILD_STATIC)
  add_compile_definitions(_LIB)
  set(BUILD_SHARED_LIBS FALSE)
else()
  add_compile_definitions(_DLL)
  set(BUILD_SHARED_LIBS TRUE)
endif()

if(MAGICK_HDRI_ENABLE)
  set(HDRI_SUFFIX HDRI)
  add_compile_definitions(MAGICKCORE_HDRI_ENABLE=1)
else()
  add_compile_definitions(MAGICKCORE_HDRI_ENABLE=0)
endif()

set(NAMESPACE_PREFIX_TAG ${NAMESPACE_PREFIX})

if(WITH_64BIT_CHANNEL_MASK_SUPPORT)
  set(CHANNEL_MASK_DEPTH 64)
else()
  set(CHANNEL_MASK_DEPTH 32)
endif()

message(STATUS "Security policy variant to enforce: ${SECURITY_POLICY}")

if(BUILD_MAGICKPP)
  enable_language(CXX)
endif()

####### DELEGATES #######
include(cmake/delegates.cmake)

####### CONFIG #######
include(cmake/configure.cmake)

####### BUILD #######

# Set ImageMagick base dir to be used inside sub-projects
set(IMAGEMAGICK_BASE_PATH ${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_BINARY_DIR})

# Set coders and filters path
set(CODERS_PATH ${CMAKE_CURRENT_SOURCE_DIR}/coders)
set(FILTERS_PATH ${CMAKE_CURRENT_SOURCE_DIR}/filters)

# Set the binaries name
set(MAGICK_BINARY_SUFFIX "${PACKAGE_MAJOR_VERSION}.${MAGICK_ABI_SUFFIX}")

# Add the subdirectories to be compiled
add_subdirectory(config)
add_subdirectory(MagickCore)
add_subdirectory(MagickWand)
if(BUILD_MAGICKPP)
  add_subdirectory(Magick++)
endif()
if(BUILD_UTILITIES)
  add_subdirectory(utilities)
endif()
if(BUILD_TESTS)
  # Running ctest with CTEST_PARALLEL_LEVEL=20 env var is recommended.
  enable_testing()
  add_subdirectory(tests)
  if(BUILD_MAGICKPP)
    add_subdirectory(Magick++/tests)
    add_subdirectory(Magick++/demo)
  endif()
endif()

install(FILES
    LICENSE
    NOTICE
    DESTINATION licenses
)
