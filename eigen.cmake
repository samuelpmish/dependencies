FetchContent_Declare(
  eigen_340
  URL https://gitlab.com/libeigen/eigen/-/archive/3.4.0/eigen-3.4.0.zip
)
set(EIGEN_BUILD_DOC OFF CACHE INTERNAL "" FORCE)
set(BUILD_TESTING OFF CACHE INTERNAL "" FORCE)
set(EIGEN_LEAVE_TEST_IN_ALL_TARGET OFF CACHE INTERNAL "" FORCE)
FetchContent_MakeAvailable(eigen_340)