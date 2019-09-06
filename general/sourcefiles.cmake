add_subdirectory(lib)
add_subdirectory(tools)

if (${PROJECT_NAME}_BUILD_TESTS)
  add_subdirectory(tests)
endif()

if (${PROJECT_NAME}_BUILD_BENCHMARKS)
  add_subdirectory(benchmarks)
endif()

if (${PROJECT_NAME}_BUILD_FUZZER)
  add_subdirectory(fuzzer)
endif()
