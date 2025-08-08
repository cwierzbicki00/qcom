#ifndef _QCC74xLOG_CONF_H
#define _QCC74xLOG_CONF_H

#include "qcc74xlog.h"

/*!< Enable logging. Disabling will exclude log content from compilation */
/*!< log enable */
#define QCC74xLOG_ENABLE

/*!< Globally enabled LOG level. LOG content below this level will be excluded from compilation */
/*!< log enable level */
#define QCC74xLOG_LEVEL_ENABLE QCC74xLOG_LEVEL_TRACE

/*!< Default LOG level configured for the logger. LOGs below this level will not be recorded. */
/*!< The logging level can be dynamically adjusted to control the recorded content. */
/*!< default log record level */
#define QCC74xLOG_LEVEL_DEFAULT QCC74xLOG_LEVEL_TRACE

/*!< Default LOG level configured for the output device. LOGs below this level will not be output. */
/*!< The output level can be dynamically adjusted to control the content output by a specific output device. */
/*!< default direct print level */
#define QCC74xLOG_DIRECT_LEVEL_DEFAULT QCC74xLOG_LEVEL_TRACE

/*!< enable timestamp to time */
#define QCC74xLOG_TIMESTAMP_ENABLE

/*!< Enable the BUFFER output device. Configuration must be completed for it to take effect. */
/*!< enable buffer directed output */
#define QCC74xLOG_DIRECT_BUFFER_ENABLE

/*!< enable stream directed output */
#define QCC74xLOG_DIRECT_STREAM_ENABLE

/*!< enable file directed output */
#define QCC74xLOG_DIRECT_FILE_ENABLE

/*!< enable file time directed output */
#define QCC74xLOG_DIRECT_FILE_TIME_ENABLE

/*!< enable file size directed output */
#define QCC74xLOG_DIRECT_FILE_SIZE_ENABLE

/*!< enable short file name */
#define QCC74xLOG_SHORT_FILENAME

/*!< enable file name record, flash use high */
#define QCC74xLOG_FILENAME_ENABLE

/*!< enable function name record, flash use medium */
#define QCC74xLOG_FUNCTION_ENABLE

/*!< enable line record, flash use low */
#define QCC74xLOG_LINE_ENABLE

/*!< Line buffer size. Stack space is used. Ensure sufficient stack space is available. */
/*!< If the line buffer size is insufficient, a long LOG output may be incomplete. */
/*!< line buffer size (in stack) */
/*!< flush use 4xline buffer size in stack */
/*!< log   use 2xline buffer size in stack */
/*!< pay attention to prevent stack overflow */
#define QCC74xLOG_LINE_BUFFER_SIZE 256

/*!< file size rotate min size */
#define QCC74xLOG_FILE_SIZE_MIN (1024)

/*!< file time rotate min interval */
#define QCC74xLOG_FILE_INTERVAL_MIN (60)

/*!< Recording features configured for the default logger */
/*!< Logger configuration can be dynamically modified to adjust recording features and improve performance */
/*!< default record flag config */
/*!< |  item | time occupancy | */
/*!< | level |            low | */
/*!< |   tag |            low | */
/*!< |  func |         medium | */
/*!< |  line |            low | */
/*!< |  file |      very high | */
/*!< | clock |         medium | */
/*!< |  time |           high | */
/*!< |thread |         medium | */
#define QCC74xLOG_FLAG_DEFAULT (    \
    (0xff & QCC74xLOG_FLAG_LEVEL) | \
    (0xff & QCC74xLOG_FLAG_TAG) |   \
    (0xff & QCC74xLOG_FLAG_FUNC) |  \
    (0xff & QCC74xLOG_FLAG_LINE) |  \
    (0xff & QCC74xLOG_FLAG_FILE) |  \
    (0xff & QCC74xLOG_FLAG_CLK) |   \
    (0xff & QCC74xLOG_FLAG_TIME) |  \
    (0x00 & QCC74xLOG_FLAG_THREAD))

/*!< color config */
#define QCC74xLOG_COLOR_FATAL QCC74xLOG_COLOR_FG_MAGENTA QCC74xLOG_COLOR_BG_NONE QCC74xLOG_SGR_NORMAL
#define QCC74xLOG_COLOR_ERROR QCC74xLOG_COLOR_FG_RED QCC74xLOG_COLOR_BG_NONE QCC74xLOG_SGR_NORMAL
#define QCC74xLOG_COLOR_WARN  QCC74xLOG_COLOR_FG_YELLOW QCC74xLOG_COLOR_BG_NONE QCC74xLOG_SGR_NORMAL
#define QCC74xLOG_COLOR_INFO  QCC74xLOG_COLOR_FG_NONE QCC74xLOG_COLOR_BG_NONE QCC74xLOG_SGR_RESET
#define QCC74xLOG_COLOR_DEBUG QCC74xLOG_COLOR_FG_WHITE QCC74xLOG_COLOR_BG_NONE QCC74xLOG_SGR_NORMAL
#define QCC74xLOG_COLOR_TRACE QCC74xLOG_COLOR_FG_WHITE QCC74xLOG_COLOR_BG_NONE QCC74xLOG_SGR_FAINT

/*!< simple layout */
#if 1
#define QCC74xLOG_SIMPLE_LAYOUT_STRING(_color, _level, _tag, _tm, _msg) \
    "%s"                                                            \
    "[%s][%10lu][%d-%02d-%02d %02d:%02d:%02d]"                      \
    "[%s:%s:%d]"                                                    \
    "<%s> %s",                                                      \
        (_color),                                                   \
        (_level),                                                   \
        ((_msg)->clkl),                                             \
        (_tm)->year, (_tm)->mon, (_tm)->mday,                       \
        (_tm)->hour, (_tm)->min, (_tm)->sec,                        \
        ((_msg)->file), ((_msg)->func), ((_msg)->line),             \
        (_tag),                                                     \
        ((_msg)->string)
#else
#define QCC74xLOG_SIMPLE_LAYOUT_STRING(_color, _level, _tag, _tm, _msg) \
    "%s"                                                            \
    "[%s][%10lu][%02d:%02d:%02d]"                                   \
    "<%s> %s",                                                      \
        (_color),                                                   \
        (_level),                                                   \
        ((_msg)->clkl),                                             \
        (_tm)->hour, (_tm)->min, (_tm)->sec,                        \
        (_tag),                                                     \
        ((_msg)->string)
#endif

/*!< level string config */
#define QCC74xLOG_LEVEL_FATAL_STRING "FATL"
#define QCC74xLOG_LEVEL_ERROR_STRING "ERRO"
#define QCC74xLOG_LEVEL_WARN_STRING  "WARN"
#define QCC74xLOG_LEVEL_INFO_STRING  "INFO"
#define QCC74xLOG_LEVEL_DEBUG_STRING "DBUG"
#define QCC74xLOG_LEVEL_TRACE_STRING "TRAC"

#endif
