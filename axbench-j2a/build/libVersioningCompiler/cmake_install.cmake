# Install script for directory: /mnt/c/Users/ponti/Github/TAFFO-test/axbench-j2a/libVersioningCompiler

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/mnt/c/Users/ponti/Github/TAFFO-test/axbench-j2a/build/libVersioningCompiler/libVersioningCompiler.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/versioningCompiler" TYPE FILE FILES
    "/mnt/c/Users/ponti/Github/TAFFO-test/axbench-j2a/libVersioningCompiler/include/versioningCompiler/Version.hpp"
    "/mnt/c/Users/ponti/Github/TAFFO-test/axbench-j2a/libVersioningCompiler/include/versioningCompiler/Option.hpp"
    "/mnt/c/Users/ponti/Github/TAFFO-test/axbench-j2a/libVersioningCompiler/include/versioningCompiler/Compiler.hpp"
    "/mnt/c/Users/ponti/Github/TAFFO-test/axbench-j2a/libVersioningCompiler/include/versioningCompiler/Utils.hpp"
    "/mnt/c/Users/ponti/Github/TAFFO-test/axbench-j2a/libVersioningCompiler/include/versioningCompiler/DebugUtils.hpp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/versioningCompiler/CompilerImpl" TYPE FILE FILES
    "/mnt/c/Users/ponti/Github/TAFFO-test/axbench-j2a/libVersioningCompiler/include/versioningCompiler/CompilerImpl/SystemCompiler.hpp"
    "/mnt/c/Users/ponti/Github/TAFFO-test/axbench-j2a/libVersioningCompiler/include/versioningCompiler/CompilerImpl/SystemCompilerOptimizer.hpp"
    "/mnt/c/Users/ponti/Github/TAFFO-test/axbench-j2a/libVersioningCompiler/include/versioningCompiler/CompilerImpl/TAFFOCompiler.hpp"
    "/mnt/c/Users/ponti/Github/TAFFO-test/axbench-j2a/libVersioningCompiler/include/versioningCompiler/CompilerImpl/ClangLibCompiler.hpp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake" TYPE FILE FILES "/mnt/c/Users/ponti/Github/TAFFO-test/axbench-j2a/libVersioningCompiler/config/FindLibVersioningCompiler.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/versioningCompiler/CompilerImpl/ClangLLVM" TYPE FILE FILES
    "/mnt/c/Users/ponti/Github/TAFFO-test/axbench-j2a/libVersioningCompiler/include/versioningCompiler/CompilerImpl/ClangLLVM/OptUtils.hpp"
    "/mnt/c/Users/ponti/Github/TAFFO-test/axbench-j2a/libVersioningCompiler/include/versioningCompiler/CompilerImpl/ClangLLVM/FileLogDiagnosticConsumer.hpp"
    "/mnt/c/Users/ponti/Github/TAFFO-test/axbench-j2a/libVersioningCompiler/include/versioningCompiler/CompilerImpl/ClangLLVM/LLVMInstanceManager.hpp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/test/libVC_test" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/test/libVC_test")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/test/libVC_test"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/test" TYPE EXECUTABLE FILES "/mnt/c/Users/ponti/Github/TAFFO-test/axbench-j2a/build/libVersioningCompiler/libVC_test")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/test/libVC_test" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/test/libVC_test")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/test/libVC_test"
         OLD_RPATH "/mnt/c/Users/ponti/Github/TAFFO-test/axbench-j2a/build/libVersioningCompiler:/usr/lib/x86_64-linux-gnu/libdl.so:/usr/lib/x86_64-linux-gnu/libuuid.so:/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/test/libVC_test")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/test/libVC_testUtils" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/test/libVC_testUtils")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/test/libVC_testUtils"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/test" TYPE EXECUTABLE FILES "/mnt/c/Users/ponti/Github/TAFFO-test/axbench-j2a/build/libVersioningCompiler/libVC_testUtils")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/test/libVC_testUtils" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/test/libVC_testUtils")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/test/libVC_testUtils"
         OLD_RPATH "/mnt/c/Users/ponti/Github/TAFFO-test/axbench-j2a/build/libVersioningCompiler:/usr/lib/x86_64-linux-gnu/libdl.so:/usr/lib/x86_64-linux-gnu/libuuid.so:/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/test/libVC_testUtils")
    endif()
  endif()
endif()

