TARGET = aladrati
TEMPLATE = lib

VER_MAJ = 0
VER_MIN = 0
VER_PAT = 1
VERSION = $${VER_MAJ}.$${VER_MIN}.$${VER_PAT}

QT += network
QT -= gui

CONFIG -= console
CONFIG -= app_bundle
CONFIG += shared
CONFIG += c++11
CONFIG += no_keywords

DEFINES += ALADRATI_LIBRARY

DEFINES += VERSION_STRING=\"\\\"$${VERSION}\\\"\"

isEmpty(PREFIX): PREFIX = $$[QT_INSTALL_PREFIX]
isEmpty(INSTALL_LIB_DIR): INSTALL_LIB_DIR = $$[QT_INSTALL_LIBS]

!contains(CONFIG, no_install_dev_files) {
    isEmpty(INSTALL_HEADERS_DIR): INSTALL_HEADERS_DIR = $$[QT_INSTALL_HEADERS]
    INSTALL_HEADERS += \
        Aladrati/aladrati.h \
        Aladrati/Aladrati \
        Aladrati/aladrati_global.h

    basePath = $${dirname(PWD)}
    for(header, INSTALL_HEADERS) {
        relPath = $${relative_path($$header, $$basePath)}
        path = $${INSTALL_HEADERS_DIR}/$${dirname(relPath)}
        eval(headers_$${path}.files += $$relPath)
        eval(headers_$${path}.path = $$path)
        eval(INSTALLS *= headers_$${path})
    }

    pkgconfigfile.input = aladrati.pc.in
    pkgconfigfile.output = aladrati.pc
    pkgconfigfile.path = $$[QT_INSTALL_LIBS]/pkgconfig
    pkgconfigfile.files = $$pkgconfigfile.output

    QMAKE_SUBSTITUTES += pkgconfigfile

    INSTALLS += pkgconfigfile

}


target = $$TARGET
target.path = $$INSTALL_LIB_DIR
INSTALLS += target

HEADERS += \
    Aladrati/aladrati.h \
    Aladrati/Aladrati \
    Aladrati/aladrati_global.h

DISTFILES += \
    aladrati.pc.in
