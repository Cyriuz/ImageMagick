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

set(MAGICK_SRC
  magick.c
)

add_executable(magick ${MAGICK_SRC} ${MAGICK_RESOURCE_FILE_PATH})

target_include_directories(magick PRIVATE ${IMAGEMAGICK_BASE_PATH})
target_link_libraries(magick PRIVATE MagickWand)

set(MAGICK_LINKED_UTILITIES
    animate
    compare
    composite
    conjure
    convert
    display
    identify
    import
    magick-script
    mogrify
    montage
    stream
)
option(WINDOWS_COPY_EXTRA_UTILITIES "Copy extra utilities to the binary directory" OFF)
foreach(utility ${MAGICK_LINKED_UTILITIES})
  if(NOT WIN32)
    add_custom_command(TARGET magick POST_BUILD
      COMMAND ${CMAKE_COMMAND} -E create_symlink magick ${utility}
      WORKING_DIRECTORY $<TARGET_FILE_DIR:magick>
    )
    install(CODE "execute_process(COMMAND ${CMAKE_COMMAND} -E create_symlink magick \${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_BINDIR}/${utility})")
  elseif(WINDOWS_COPY_EXTRA_UTILITIES)
    add_custom_command(TARGET magick POST_BUILD
      COMMAND ${CMAKE_COMMAND} -E copy magick.exe ${utility}.exe
      WORKING_DIRECTORY $<TARGET_FILE_DIR:magick>
    )
    install(CODE "execute_process(COMMAND ${CMAKE_COMMAND} -E copy $<TARGET_FILE:magick> \${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_BINDIR}/${utility}.exe)")
  endif()
  list(APPEND BINARY_DIR_SYMLINKS ${CMAKE_CURRENT_BINARY_DIR}/${utility})
endforeach()

install(TARGETS magick
  RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
  BUNDLE DESTINATION ${CMAKE_INSTALL_BINDIR}
)

set_property(DIRECTORY PROPERTY ADDITIONAL_CLEAN_FILES "${BINARY_DIR_SYMLINKS}")
