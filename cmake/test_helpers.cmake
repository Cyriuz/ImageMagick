function(add_tap_test TEST_FILE)
  set(TEST_ENV
      "MAGICK=$<TARGET_FILE:magick>"
      "ANIMATE=$<TARGET_FILE:magick> animate"
      "COMPARE=$<TARGET_FILE:magick> compare"
      "COMPOSITE=$<TARGET_FILE:magick> composite"
      "CONJURE=$<TARGET_FILE:magick> conjure"
      "CONVERT=$<TARGET_FILE:magick> convert"
      "DISPLAY=$<TARGET_FILE:magick> display"
      "IDENTIFY=$<TARGET_FILE:magick> identify"
      "IMPORT=$<TARGET_FILE:magick> import"
      "MOGRIFY=$<TARGET_FILE:magick> mogrify"
      "MONTAGE=$<TARGET_FILE:magick> montage"
      "STREAM=$<TARGET_FILE:magick> stream"

      "VALIDATE=$<TARGET_FILE:validate>"
      "DRAWTEST=$<TARGET_FILE:drawtest>"
      "WANDTEST=$<TARGET_FILE:wandtest>"

      "SRCDIR=${CMAKE_CURRENT_BINARY_DIR}/"
      "srcdir=${CMAKE_CURRENT_BINARY_DIR}/"
      "TOPSRCDIR=${CMAKE_BINARY_DIR}/"
      "top_srcdir=${CMAKE_BINARY_DIR}/"
      "MAGICK_CONFIGURE_PATH=${CMAKE_BINARY_DIR}/config/"
      "MAGICK_FONT=${CMAKE_SOURCE_DIR}/PerlMagick/demo/Generic.ttf"
  )
  if(BUILD_MAGICKPP)
    set(TEST_ENV ${TEST_ENV}
        "MAGICPP_TEST_BINARIES_DIR=$<TARGET_FILE_DIR:exceptions>"
        "MAGICPP_DEMO_BINARIES_DIR=$<TARGET_FILE_DIR:zoom>"
    )
  endif()

  if(ARGC GREATER 1)
    set(TEST_NAME ${ARGV1})
  else()
    set(TEST_NAME ${TEST_FILE})
  endif()
  set(log_path "tests/test_${TEST_NAME}.log")
  add_test(
      NAME ${TEST_NAME}
      COMMAND sh -c "sh '${CMAKE_CURRENT_BINARY_DIR}/${TEST_FILE}.tap' | tee '${log_path}' && grep -q 'not ok' '${log_path}' && exit 1 || exit 0"
      WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
  )
  set_tests_properties(${TEST_NAME} PROPERTIES ENVIRONMENT "${TEST_ENV}")
endfunction()

function(copy_test_resources suffix)
  add_custom_target(copy_test_resources_${suffix} ALL)
  file(GLOB TEST_RESOURCES "${CMAKE_CURRENT_SOURCE_DIR}/*.tap" "${CMAKE_CURRENT_SOURCE_DIR}/*.miff" "${CMAKE_CURRENT_SOURCE_DIR}/*.pnm")
  foreach(TEST_RESOURCE ${TEST_RESOURCES})
    get_filename_component(NAME ${TEST_RESOURCE} NAME)
    set(SRC ${TEST_RESOURCE})
    set(DST ${CMAKE_CURRENT_BINARY_DIR}/${NAME})
    add_custom_command(
        OUTPUT ${DST}
        COMMAND ${CMAKE_COMMAND} -E copy_if_different ${SRC} ${DST}
        DEPENDS ${SRC}
    )
    add_custom_target(copy_${NAME} ALL DEPENDS ${SRC} ${DST})
    add_dependencies(copy_test_resources_${suffix} copy_${NAME})
  endforeach()
endfunction()

set_property(DIRECTORY PROPERTY ADDITIONAL_CLEAN_FILES
    "${CMAKE_BINARY_DIR}/*_out.*"
    "${CMAKE_BINARY_DIR}/tests/*.log"
)
