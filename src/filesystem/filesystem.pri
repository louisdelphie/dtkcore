include($$PWD/private/private.pri)

INCLUDEPATH += $$PWD/../base

HEADERS += \
    $$PWD/dbasefilewatcher.h \
    $$PWD/dfilesystemwatcher.h \
    $$PWD/dfilewatcher.h \
    $$PWD/dfilewatchermanager.h \
    $$PWD/dpathbuf.h \
    $$PWD/dstandardpaths.h

SOURCES += \
    $$PWD/dbasefilewatcher.cpp \
    $$PWD/dfilewatcher.cpp \
    $$PWD/dfilewatchermanager.cpp \
    $$PWD/dstandardpaths.cpp


linux {
    SOURCES += \
        $$PWD/dfilesystemwatcher_linux.cpp
} else:win* {
    SOURCES += \
        $$PWD/dfilesystemwatcher_win.cpp
} else {
    SOURCES += \
        $$PWD/dfilesystemwatcher_dummy.cpp
}

includes.files += $$PWD/*.h
includes.files += \
    $$PWD/DFileWatcher \
    $$PWD/DBaseFileWatcher \
    $$PWD/DFileSystemWatcher \
    $$PWD/DFileWatcherManager \
    $$PWD/DPathBuf \
    $$PWD/DStandardPaths
