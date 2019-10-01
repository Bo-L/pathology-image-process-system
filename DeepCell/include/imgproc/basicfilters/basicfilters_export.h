
#ifndef BASICFILTERS_EXPORT_H
#define BASICFILTERS_EXPORT_H

#ifdef BASICFILTERS_STATIC_DEFINE
#  define BASICFILTERS_EXPORT
#  define BASICFILTERS_NO_EXPORT
#else
#  ifndef BASICFILTERS_EXPORT
#    ifdef basicfilters_EXPORTS
        /* We are building this library */
#      define BASICFILTERS_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define BASICFILTERS_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef BASICFILTERS_NO_EXPORT
#    define BASICFILTERS_NO_EXPORT 
#  endif
#endif

#ifndef BASICFILTERS_DEPRECATED
#  define BASICFILTERS_DEPRECATED __declspec(deprecated)
#endif

#ifndef BASICFILTERS_DEPRECATED_EXPORT
#  define BASICFILTERS_DEPRECATED_EXPORT BASICFILTERS_EXPORT BASICFILTERS_DEPRECATED
#endif

#ifndef BASICFILTERS_DEPRECATED_NO_EXPORT
#  define BASICFILTERS_DEPRECATED_NO_EXPORT BASICFILTERS_NO_EXPORT BASICFILTERS_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef BASICFILTERS_NO_DEPRECATED
#    define BASICFILTERS_NO_DEPRECATED
#  endif
#endif

#endif /* BASICFILTERS_EXPORT_H */
