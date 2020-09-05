# - Try to find mbedTLS
# Once done this will define
#
# Read-Only variables
#  MBEDTLS_FOUND - system has mbedTLS
#  MBEDTLS_INCLUDE_DIR - the mbedTLS include directory
#  MBEDTLS_LIBRARY_DIR - the mbedTLS library directory
#  MBEDTLS_LIBRARIES - Link these to use mbedTLS
#  MBEDTLS_LIBRARY - path to mbedTLS library
#  MBEDX509_LIBRARY - path to mbedTLS X.509 library
#  MBEDCRYPTO_LIBRARY - path to mbedTLS Crypto library
#
# Hint
#  MBEDTLS_ROOT_DIR can be pointed to a local mbedTLS installation.

SET(_MBEDTLS_ROOT_HINTS
    ${MBEDTLS_ROOT_DIR}
    ENV MBEDTLS_ROOT_DIR
)

SET(_MBEDTLS_ROOT_HINTS_AND_PATHS
    HINTS ${_MBEDTLS_ROOT_HINTS}
    PATHS ${_MBEDTLS_ROOT_PATHS}
)

FIND_PATH(MBEDTLS_INCLUDE_DIR
    NAMES mbedtls/version.h
    ${_MBEDTLS_ROOT_HINTS_AND_PATHS}
    PATH_SUFFIXES include
)

IF(MBEDTLS_INCLUDE_DIR AND MBEDTLS_LIBRARIES)
    # Already in cache, be silent
    SET(MBEDTLS_FIND_QUIETLY TRUE)
ENDIF()

FIND_LIBRARY(MBEDTLS_LIBRARY
    NAMES mbedtls libmbedtls
    ${_MBEDTLS_ROOT_HINTS_AND_PATHS}
    PATH_SUFFIXES library
)
FIND_LIBRARY(MBEDX509_LIBRARY
    NAMES mbedx509 libmbedx509
    ${_MBEDTLS_ROOT_HINTS_AND_PATHS}
    PATH_SUFFIXES library
)
FIND_LIBRARY(MBEDCRYPTO_LIBRARY
    NAMES mbedcrypto libmbedcrypto
    ${_MBEDTLS_ROOT_HINTS_AND_PATHS}
    PATH_SUFFIXES library
)

IF(MBEDTLS_INCLUDE_DIR AND MBEDTLS_LIBRARY AND MBEDX509_LIBRARY AND MBEDCRYPTO_LIBRARY)
     SET(MBEDTLS_FOUND TRUE)
ENDIF()

IF(MBEDTLS_FOUND)
    # split mbedTLS into -L and -l linker options, so we can set them for pkg-config
    GET_FILENAME_COMPONENT(MBEDTLS_LIBRARY_DIR ${MBEDTLS_LIBRARY} PATH)
    GET_FILENAME_COMPONENT(MBEDTLS_LIBRARY_FILE ${MBEDTLS_LIBRARY} NAME_WE)
    GET_FILENAME_COMPONENT(MBEDX509_LIBRARY_FILE ${MBEDX509_LIBRARY} NAME_WE)
    GET_FILENAME_COMPONENT(MBEDCRYPTO_LIBRARY_FILE ${MBEDCRYPTO_LIBRARY} NAME_WE)
    STRING(REGEX REPLACE "^lib" "" MBEDTLS_LIBRARY_FILE ${MBEDTLS_LIBRARY_FILE})
    STRING(REGEX REPLACE "^lib" "" MBEDX509_LIBRARY_FILE ${MBEDX509_LIBRARY_FILE})
    STRING(REGEX REPLACE "^lib" "" MBEDCRYPTO_LIBRARY_FILE ${MBEDCRYPTO_LIBRARY_FILE})
    SET(MBEDTLS_LIBRARIES "-L${MBEDTLS_LIBRARY_DIR} -l${MBEDTLS_LIBRARY_FILE} -l${MBEDX509_LIBRARY_FILE} -l${MBEDCRYPTO_LIBRARY_FILE}")

    IF(NOT MBEDTLS_FIND_QUIETLY)
        MESSAGE(STATUS "Found mbedTLS:")
        FILE(READ ${MBEDTLS_INCLUDE_DIR}/mbedtls/version.h MBEDTLSCONTENT)
        STRING(REGEX MATCH "MBEDTLS_VERSION_STRING +\"[0-9|.]+\"" MBEDTLSMATCH ${MBEDTLSCONTENT})
        IF (MBEDTLSMATCH)
            STRING(REGEX REPLACE "MBEDTLS_VERSION_STRING +\"([0-9|.]+)\"" "\\1" MBEDTLS_VERSION ${MBEDTLSMATCH})
            MESSAGE(STATUS "  version ${MBEDTLS_VERSION}")
        ENDIF(MBEDTLSMATCH)
        MESSAGE(STATUS "  TLS: ${MBEDTLS_LIBRARY}")
        MESSAGE(STATUS "  X509: ${MBEDX509_LIBRARY}")
        MESSAGE(STATUS "  Crypto: ${MBEDCRYPTO_LIBRARY}")
    ENDIF(NOT MBEDTLS_FIND_QUIETLY)
ELSE(MBEDTLS_FOUND)
    IF(MBEDTLS_FIND_REQUIRED)
        MESSAGE(FATAL_ERROR "Could not find mbedTLS")
    ENDIF(MBEDTLS_FIND_REQUIRED)
ENDIF(MBEDTLS_FOUND)

MARK_AS_ADVANCED(
    MBEDTLS_INCLUDE_DIR
    MBEDTLS_LIBRARY_DIR
    MBEDTLS_LIBRARIES
    MBEDTLS_LIBRARY
    MBEDX509_LIBRARY
    MBEDCRYPTO_LIBRARY
)
