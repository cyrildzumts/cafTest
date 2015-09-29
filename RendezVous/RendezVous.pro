TEMPLATE = app
CONFIG += console c++11 link_pkgconfig
CONFIG -= app_bundle
TARGET= RendezVous
LIBS += -L/usr/local/lib -lcaf_core -lcaf_io
INCLUDEPATH +=  /usr/local/include/caf

SOURCES += main.cpp

include(deployment.pri)
qtcAddDeployment()

MOC_DIR = .moc
OBJECTS_DIR = .obj
