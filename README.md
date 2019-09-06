# CMake Framework Files
Just drop this in `cmake/`, and write
```
set(CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")
include( "common" )
```
into your root `CMakeLists.txt`, link your targets to `GeneralConfig`, prego.
