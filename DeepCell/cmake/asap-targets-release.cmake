#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "core" for configuration "Release"
set_property(TARGET core APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(core PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/core.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/core.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS core )
list(APPEND _IMPORT_CHECK_FILES_FOR_core "${_IMPORT_PREFIX}/lib/core.lib" "${_IMPORT_PREFIX}/bin/core.dll" )

# Import target "_multiresolutionimageinterface" for configuration "Release"
set_property(TARGET _multiresolutionimageinterface APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(_multiresolutionimageinterface PROPERTIES
  IMPORTED_COMMON_LANGUAGE_RUNTIME_RELEASE ""
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/_multiresolutionimageinterface.pyd"
  )

list(APPEND _IMPORT_CHECK_TARGETS _multiresolutionimageinterface )
list(APPEND _IMPORT_CHECK_FILES_FOR__multiresolutionimageinterface "${_IMPORT_PREFIX}/bin/_multiresolutionimageinterface.pyd" )

# Import target "multiresolutionimageinterface" for configuration "Release"
set_property(TARGET multiresolutionimageinterface APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(multiresolutionimageinterface PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/multiresolutionimageinterface.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "core"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/multiresolutionimageinterface.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS multiresolutionimageinterface )
list(APPEND _IMPORT_CHECK_FILES_FOR_multiresolutionimageinterface "${_IMPORT_PREFIX}/lib/multiresolutionimageinterface.lib" "${_IMPORT_PREFIX}/bin/multiresolutionimageinterface.dll" )

# Import target "openslidefileformat" for configuration "Release"
set_property(TARGET openslidefileformat APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(openslidefileformat PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/openslidefileformat.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "multiresolutionimageinterface;core"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/formats/openslidefileformat.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS openslidefileformat )
list(APPEND _IMPORT_CHECK_FILES_FOR_openslidefileformat "${_IMPORT_PREFIX}/lib/openslidefileformat.lib" "${_IMPORT_PREFIX}/bin/formats/openslidefileformat.dll" )

# Import target "annotation" for configuration "Release"
set_property(TARGET annotation APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(annotation PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/annotation.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "core;multiresolutionimageinterface"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/annotation.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS annotation )
list(APPEND _IMPORT_CHECK_FILES_FOR_annotation "${_IMPORT_PREFIX}/lib/annotation.lib" "${_IMPORT_PREFIX}/bin/annotation.dll" )

# Import target "basicfilters" for configuration "Release"
set_property(TARGET basicfilters APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(basicfilters PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/basicfilters.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "multiresolutionimageinterface;core"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/basicfilters.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS basicfilters )
list(APPEND _IMPORT_CHECK_FILES_FOR_basicfilters "${_IMPORT_PREFIX}/lib/basicfilters.lib" "${_IMPORT_PREFIX}/bin/basicfilters.dll" )

# Import target "NucleiSegmentation" for configuration "Release"
set_property(TARGET NucleiSegmentation APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(NucleiSegmentation PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/NucleiSegmentation.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "opencv_world;opencv_videostab;opencv_videoio;opencv_video;opencv_superres;opencv_stitching;opencv_shape;opencv_photo;opencv_objdetect;opencv_ml;opencv_imgproc;opencv_imgcodecs;opencv_highgui;opencv_flann;opencv_features2d;opencv_core;opencv_calib3d"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/NucleiSegmentation.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS NucleiSegmentation )
list(APPEND _IMPORT_CHECK_FILES_FOR_NucleiSegmentation "${_IMPORT_PREFIX}/lib/NucleiSegmentation.lib" "${_IMPORT_PREFIX}/bin/NucleiSegmentation.dll" )

# Import target "wholeslidefilters" for configuration "Release"
set_property(TARGET wholeslidefilters APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(wholeslidefilters PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/wholeslidefilters.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "opencv_world;opencv_videostab;opencv_videoio;opencv_video;opencv_superres;opencv_stitching;opencv_shape;opencv_photo;opencv_objdetect;opencv_ml;opencv_imgproc;opencv_imgcodecs;opencv_highgui;opencv_flann;opencv_features2d;opencv_core;opencv_calib3d;annotation;NucleiSegmentation;basicfilters;multiresolutionimageinterface;core"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/wholeslidefilters.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS wholeslidefilters )
list(APPEND _IMPORT_CHECK_FILES_FOR_wholeslidefilters "${_IMPORT_PREFIX}/lib/wholeslidefilters.lib" "${_IMPORT_PREFIX}/bin/wholeslidefilters.dll" )

# Import target "_wholeslidefilters" for configuration "Release"
set_property(TARGET _wholeslidefilters APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(_wholeslidefilters PROPERTIES
  IMPORTED_COMMON_LANGUAGE_RUNTIME_RELEASE ""
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/_wholeslidefilters.pyd"
  )

list(APPEND _IMPORT_CHECK_TARGETS _wholeslidefilters )
list(APPEND _IMPORT_CHECK_FILES_FOR__wholeslidefilters "${_IMPORT_PREFIX}/bin/_wholeslidefilters.pyd" )

# Import target "ASAP" for configuration "Release"
set_property(TARGET ASAP APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ASAP PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/ASAP.exe"
  )

list(APPEND _IMPORT_CHECK_TARGETS ASAP )
list(APPEND _IMPORT_CHECK_FILES_FOR_ASAP "${_IMPORT_PREFIX}/bin/ASAP.exe" )

# Import target "ASAPLib" for configuration "Release"
set_property(TARGET ASAPLib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ASAPLib PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/ASAPLib.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "Qt5::Core;Qt5::Widgets;Qt5::OpenGL;Qt5::UiTools;Qt5::PrintSupport;Qt5::Network;multiresolutionimageinterface;opencv_world;opencv_videostab;opencv_videoio;opencv_video;opencv_superres;opencv_stitching;opencv_shape;opencv_photo;opencv_objdetect;opencv_ml;opencv_imgproc;opencv_imgcodecs;opencv_highgui;opencv_flann;opencv_features2d;opencv_core;opencv_calib3d;basicfilters"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/ASAPLib.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS ASAPLib )
list(APPEND _IMPORT_CHECK_FILES_FOR_ASAPLib "${_IMPORT_PREFIX}/lib/ASAPLib.lib" "${_IMPORT_PREFIX}/bin/ASAPLib.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
