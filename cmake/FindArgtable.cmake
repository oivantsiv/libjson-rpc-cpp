# - Try to find ARGTABLE
# Once done this will define
#
#  ARGTABLE_FOUND - system has ARGTABLE
#  ARGTABLE_INCLUDES - the ARGTABLE include directory
#  ARGTABLE_LIBRARY - Link these to use ARGTABLE

FIND_LIBRARY (ARGTABLE_LIBRARIES NAMES argtable2
    PATHS
    ENV LD_LIBRARY_PATH
    ENV LIBRARY_PATH
    /usr/lib64
    /usr/lib
    /usr/local/lib64
    /usr/local/lib
    /opt/local/lib
	 ${ARGTABLE_ROOT}/lib
	${CMAKE_SOURCE_DIR}/win32-deps/lib
    )

FIND_PATH (ARGTABLE_INCLUDE_DIRS argtable2.h
    ENV CPATH
	${ARGTABLE_ROOT}/include
    /usr/include
    /usr/local/include
    /opt/local/include
	${CMAKE_SOURCE_DIR}/win32-deps/include

    )

IF(ARGTABLE_INCLUDE_DIRS AND ARGTABLE_LIBRARIES)
    SET(ARGTABLE_FOUND TRUE)
ENDIF(ARGTABLE_INCLUDE_DIRS AND ARGTABLE_LIBRARIES)

IF(ARGTABLE_FOUND)
  IF(NOT ARGTABLE_FIND_QUIETLY)
    MESSAGE(STATUS "Found ARGTABLE: ${ARGTABLE_LIBRARIES}")
  ENDIF(NOT ARGTABLE_FIND_QUIETLY)
ELSE(ARGTABLE_FOUND)
  IF(ARGTABLE_FIND_REQUIRED)
    MESSAGE(FATAL_ERROR "Could not find ARGTABLE")
  ENDIF(ARGTABLE_FIND_REQUIRED)
ENDIF(ARGTABLE_FOUND)

MARK_AS_ADVANCED(
  ARGTABLE_LIBRARIES
  ARGTABLE_INCLUDE_DIRS
  )