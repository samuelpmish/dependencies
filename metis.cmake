ExternalProject_Add(
  libmetis
  SOURCE_DIR ${PROJECT_SOURCE_DIR}/dep/metis-510
  BINARY_DIR ${DEP_BUILD_PATH}/metis
  CMAKE_ARGS
    -DCMAKE_BUILD_TYPE=Release
    -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
    -DCMAKE_INSTALL_PREFIX:PATH=${DEP_INSTALL_PATH}
    -DBUILD_SHARED_LIBS=False
)
