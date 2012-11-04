CONFIG += static

TARGET = indexdb
TEMPLATE = lib

SOURCES += \
    Buffer.cc \
    FileIo.cc \
    FileIo64BitSupport.cc \
    IndexArchiveBuilder.cc \
    IndexArchiveReader.cc \
    IndexDb.cc \
    StringTable.cc

HEADERS += \
    Buffer.h \
    Endian.h \
    FileIo.h \
    FileIo64BitSupport.h \
    IndexArchiveBuilder.h \
    IndexArchiveReader.h \
    IndexDb.h \
    StringTable.h \
    Util.h \
    WriterSha256Context.h

INCLUDEPATH += ../third_party/libMurmurHash3
INCLUDEPATH += ../third_party/libsha2
INCLUDEPATH += ../third_party/libsnappy

QMAKE_CXXFLAGS += -std=c++0x
QMAKE_CXXFLAGS_WARN_ON += -Wno-unused-parameter
