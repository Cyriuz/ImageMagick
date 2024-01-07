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

include(${CMAKE_SOURCE_DIR}/cmake/test_helpers.cmake)

foreach(demo analyze button demo flip gravity piddle shapes zoom)
  add_executable(${demo} "${CMAKE_SOURCE_DIR}/Magick++/demo/${demo}.cpp")
  target_link_libraries(${demo} PRIVATE Magick++)
endforeach()

copy_test_resources(magickpp-demo)

add_tap_test(demos magick++-demos)
