set(SUPPORTED_LLVM_VERSIONS 13 14)

if(${LLVM_VERSION} IN_LIST SUPPORTED_LLVM_VERSIONS) 
  message("building Enzyme against LLVM ${LLVM_VERSION}")
else ()
  message("Error: Enzyme does not support LLVM ${LLVM_VERSION}")
endif()

ExternalProject_Add(TPL_enzyme                                                     
    GIT_REPOSITORY    "https://github.com/EnzymeAD/Enzyme.git"
    GIT_TAG           main
    SOURCE_SUBDIR     enzyme
    UPDATE_COMMAND    ""
    CMAKE_ARGS -DCMAKE_CXX_COMPILER=${LLVM_DIR}/../../../bin/clang++
               -DLLVM_DIR=${LLVM_DIR}
	             -DCMAKE_INSTALL_PREFIX:PATH=${CMAKE_SOURCE_DIR}/build
)

ExternalProject_Add_StepDependencies(TPL_enzyme
    configure TPL_llvm
)
