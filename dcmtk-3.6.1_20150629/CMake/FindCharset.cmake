# Find charset library
#
#  LIBCHARSET_INCLUDE_DIRS - where to find localcharset.h, etc
#  LIBCHARSET_LIBRARIES    - Lists of libraries when using charset
#  LIBCHARSET_FOUND        - True if charset found

INCLUDE(FindPackageHandleStandardArgs)

# Look for the header file
FIND_PATH(LIBCHARSET_INCLUDE_DIR NAMES localcharset.h)
MARK_AS_ADVANCED(LIBCHARSET_INCLUDE_DIR)

SET(LIBCHARSET_LIBS charset)
FIND_LIBRARY(LIBCHARSET_LIBRARY NAMES ${LIBCHARSET_LIBS})
MARK_AS_ADVANCED(LIBCHARSET_LIBRARY)

FIND_PACKAGE_HANDLE_STANDARD_ARGS(LIBCHARSET REQUIRED_VARS LIBCHARSET_LIBRARY LIBCHARSET_INCLUDE_DIR)

IF(LIBCHARSET_FOUND)
  SET(LIBCHARSET_INCLUDE_DIRS ${LIBCHARSET_INCLUDE_DIR})
  SET(LIBCHARSET_LIBRARIES ${LIBCHARSET_LIBRARY})
ENDIF(LIBCHARSET_FOUND)
