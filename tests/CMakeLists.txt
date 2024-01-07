# Copyright 1999 ImageMagick Studio LLC, a non-profit organization
# dedicated to making software imaging solutions freely available.
#
# You may not use this file except in compliance with the License.
# obtain a copy of the License at
#
#   https://imagemagick.org/script/license.php
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#  CMakeLists.txt for the ImageMagick validation suite.

include(${CMAKE_SOURCE_DIR}/cmake/test_helpers.cmake)

foreach(executable validate drawtest wandtest)
  add_executable(${executable} ${executable}.c)
  target_link_libraries(${executable} PRIVATE MagickCore MagickWand)
endforeach()

copy_test_resources(core)

add_tap_test(validate-colorspace)
add_tap_test(validate-compare)
add_tap_test(validate-composite)
add_tap_test(validate-convert)
add_tap_test(validate-formats-disk)
add_tap_test(validate-formats-map)
add_tap_test(validate-formats-memory)
add_tap_test(validate-identify)
add_tap_test(validate-import)
add_tap_test(validate-magick)
add_tap_test(validate-montage)
add_tap_test(validate-stream)
add_tap_test(drawtest)
add_tap_test(wandtest)
if(BUILD_UTILITIES)
  add_tap_test(cli-colorspace)
  add_tap_test(cli-pipe)
endif()
