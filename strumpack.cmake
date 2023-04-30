ExternalProject_Add(
  libstrumpack
  SOURCE_DIR ${PROJECT_SOURCE_DIR}/dep/strumpack-711
  BINARY_DIR ${DEP_BUILD_PATH}/strumpack
  CMAKE_ARGS
    -DCMAKE_BUILD_TYPE=Release
    -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
    -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
    -DCMAKE_EXPORT_COMPILE_COMMANDS=1
    -DCMAKE_INSTALL_PREFIX:PATH=${DEP_INSTALL_PATH}
    -DTPL_METIS_INCLUDE_DIRS=${DEP_INSTALL_PATH}/include
    -DTPL_METIS_LIBRARIES=${DEP_INSTALL_PATH}/lib/libmetis.a

    -DSTRUMPACK_BUILD_TESTS=OFF
    -DSTRUMPACK_BUILD_EXAMPLES=OFF

    -DTPL_ENABLE_SLATE=OFF
    -DTPL_ENABLE_PARMETIS=OFF
    -DTPL_ENABLE_SCOTCH=OFF
    -DTPL_ENABLE_PTSCOTCH=OFF
    -DTPL_ENABLE_BPACK=OFF
    -DTPL_ENABLE_ZFP=OFF

    -DSTRUMPACK_USE_MPI=OFF 
    #-DTPL_SCALAPACK_LIBRARIES="..." # must be specified when MPI=ON

    #-DSTRUMPACK_USE_CUDA=ON 
    #-DCMAKE_CUDA_ARCHITECTURES="75" 
    #-DCUDAToolkit_ROOT=/some/path
)

ExternalProject_Add_StepDependencies(libstrumpack configure libmetis)