# -*- mode: Makefile -*-

TARGET = sample-framework
CONFIG += c++14 qt opengl debug
QT += gui widgets opengl xml

HEADERS = MyWindow.h MyViewer.h MyViewer.hpp
SOURCES = MyWindow.cpp MyViewer.cpp main.cpp

LIBS *= -lopengl32 -lglu32


INCLUDEPATH += "E:\tools\OpenMesh\include"
LIBS += -L"E:\tools\OpenMesh\lib" -lOpenMeshCore

INCLUDEPATH += "E:\tools\libQGLViewer-2.7.2"
LIBS += -L"E:\tools\libQGLViewer-2.7.2\QGLViewer" -llibQGLViewer2


#INCLUDEPATH += /usr/include/eigen3
#LIBS += -opengl32.lib -glu32.lib

# Optional
# DEFINES += BETTER_MEAN_CURVATURE USE_JET_NORMALS
# LIBS += -lCGAL # this library will be header-only from version 5

RESOURCES = sample-framework.qrc
