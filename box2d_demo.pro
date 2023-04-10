QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Tell direct in .pro where to build

release:DESTDIR = build/release
release:OBJECTS_DIR = build/release/.obj
release:MOC_DIR = build/release/.moc
release:RCC_DIR = build/release/.rcc
release:UI_DIR = build/release/.ui

debug:DESTDIR = build/debug
debug:OBJECTS_DIR = build/debug/.obj
debug:MOC_DIR = build/debug/.moc
debug:RCC_DIR = build/debug/.rcc
debug:UI_DIR = build/debug/.ui

# Include other .pri files here:
include(box2d/include.pri)

SOURCES += \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    mainwindow.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
