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

enable_language(CXX)

SET(MAGICKXX_PUBLIC_HEADERS
  lib/Magick++/Blob.h
  lib/Magick++/CoderInfo.h
  lib/Magick++/Color.h
  lib/Magick++/Drawable.h
  lib/Magick++/Exception.h
  lib/Magick++/Functions.h
  lib/Magick++/Geometry.h
  lib/Magick++/Image.h
  lib/Magick++/Include.h
  lib/Magick++/Montage.h
  lib/Magick++/Pixels.h
  lib/Magick++/ResourceLimits.h
  lib/Magick++/SecurityPolicy.h
  lib/Magick++/Statistic.h
  lib/Magick++/STL.h
  lib/Magick++/TypeMetric.h
)

set(MAGICKXX_SRC
  lib/Blob.cpp
  lib/BlobRef.cpp
  lib/CoderInfo.cpp
  lib/Color.cpp
  lib/Drawable.cpp
  lib/Exception.cpp
  lib/Functions.cpp
  lib/Geometry.cpp
  lib/Image.cpp
  lib/ImageRef.cpp
  lib/Montage.cpp
  lib/Options.cpp
  lib/Pixels.cpp
  lib/ResourceLimits.cpp
  lib/SecurityPolicy.cpp
  lib/Statistic.cpp
  lib/STL.cpp
  lib/Thread.cpp
  lib/TypeMetric.cpp
  lib/Magick++.h
  lib/Magick++/Blob.h
  lib/Magick++/BlobRef.h
  lib/Magick++/CoderInfo.h
  lib/Magick++/Color.h
  lib/Magick++/Drawable.h
  lib/Magick++/Exception.h
  lib/Magick++/Functions.h
  lib/Magick++/Geometry.h
  lib/Magick++/Image.h
  lib/Magick++/ImageRef.h
  lib/Magick++/Include.h
  lib/Magick++/Montage.h
  lib/Magick++/Options.h
  lib/Magick++/Pixels.h
  lib/Magick++/ResourceLimits.h
  lib/Magick++/SecurityPolicy.h
  lib/Magick++/Statistic.h
  lib/Magick++/STL.h
  lib/Magick++/Thread.h
  lib/Magick++/TypeMetric.h
)

add_library(Magick++ ${MAGICKXX_SRC} ${MAGICK_RESOURCE_FILE_PATH})

set_target_properties(Magick++ PROPERTIES
    OUTPUT_NAME "Magick++-${MAGICK_BINARY_SUFFIX}"
    PUBLIC_HEADER "${MAGICKXX_PUBLIC_HEADERS}"
)
target_include_directories(Magick++ PUBLIC ${IMAGEMAGICK_BASE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/lib)
target_compile_definitions(Magick++ PRIVATE _MAGICKLIB_)
target_link_libraries(Magick++ PUBLIC MagickWand)

install(TARGETS Magick++
  RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
  LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
  ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
  PUBLIC_HEADER DESTINATION ${INCLUDE_PATH}/Magick++
)

install(FILES
  lib/Magick++.h DESTINATION ${INCLUDE_PATH}
)

configure_file(bin/Magick++-config.in ${CMAKE_CURRENT_BINARY_DIR}/Magick++-config @ONLY)
install(FILES
  ${CMAKE_CURRENT_BINARY_DIR}/Magick++-config DESTINATION ${CMAKE_INSTALL_BINDIR}
  PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE
)
