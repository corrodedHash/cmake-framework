include(ExternalProject)
find_package(Git REQUIRED)

set(GSL_EXTERNAL_ROOT ${CMAKE_BINARY_DIR}/externals/GSL)
set(GSL_EXTERNAL_REPO "https://github.com/microsoft/GSL")

ExternalProject_Add(
  extlib_gsl
  PREFIX ${GSL_EXTERNAL_ROOT}
  GIT_REPOSITORY ${GSL_EXTERNAL_REPO}
  TIMEOUT 10
  #UPDATE_COMMAND ${GIT_EXECUTABLE} pull
  UPDATE_COMMAND ""
  CONFIGURE_COMMAND ""
  BUILD_COMMAND ""
  INSTALL_COMMAND ""
  LOG_DOWNLOAD ON
  )

# Expose required variable (INCLUDE_DIR) to parent scope
ExternalProject_Get_Property(extlib_gsl SOURCE_DIR)
add_library(GSL::GSL INTERFACE IMPORTED)
add_dependencies(GSL::GSL extlib_gsl)
target_include_directories(GSL::GSL SYSTEM INTERFACE ${SOURCE_DIR}/include)
