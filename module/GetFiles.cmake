macro(add_source_files TARGET_NAME EXCEPTION)
  file(GLOB_RECURSE SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/**.${EXCEPTION})
  target_sources(${TARGET_NAME} PRIVATE ${SOURCES})
endmacro()

macro(add_include_directories TARGET_NAME PATH)
  file(GLOB SUBDIRECTORIES LIST_DIRECTORIES ON ${PATH}/*)
  foreach(DIRECTORY ${SUBDIRECTORIES})
    if(IS_DIRECTORY ${DIRECTORY})
      target_include_directories(${TARGET_NAME} PRIVATE ${DIRECTORY})
    endif()
  endforeach()
endmacro()
