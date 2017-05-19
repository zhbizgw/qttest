#-------------------------------------------------
#
# Project created by QtCreator 2017-05-02T13:56:37
#
#-------------------------------------------------

QT       -= gui

TARGET = sdkcore
TEMPLATE = lib
CONFIG += staticlib

SOURCES += sdkcore.cpp

HEADERS += sdkcore.h
unix {
    target.path = /usr/lib
    INSTALLS += target
}
