
QT       += core
QT       -= gui
TARGET = FunctionEvaluator
CONFIG   += console c++11 link_pkgconfig
CONFIG   -= app_bundle

TEMPLATE = app


SOURCES += main.cpp
LIBS += -L/usr/local/lib -lcaf_core
INCLUDEPATH +=  /usr/local/include/caf

