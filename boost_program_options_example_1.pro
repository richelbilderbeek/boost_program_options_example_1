QT       += core
QT       -= gui
CONFIG   += console
CONFIG   -= app_bundle
TEMPLATE = app

unix {
  LIBS += -lboost_regex
}

win32 {
  #Boost.Program_options
  INCLUDEPATH += \
  ../../Libraries/boost_1_53_0

  SOURCES += main.cpp \
    ../../Libraries/boost_1_53_0/libs/program_options/src/winmain.cpp \
    ../../Libraries/boost_1_53_0/libs/program_options/src/variables_map.cpp \
    ../../Libraries/boost_1_53_0/libs/program_options/src/value_semantic.cpp \
    ../../Libraries/boost_1_53_0/libs/program_options/src/utf8_codecvt_facet.cpp \
    ../../Libraries/boost_1_53_0/libs/program_options/src/split.cpp \
    ../../Libraries/boost_1_53_0/libs/program_options/src/positional_options.cpp \
    ../../Libraries/boost_1_53_0/libs/program_options/src/parsers.cpp \
    ../../Libraries/boost_1_53_0/libs/program_options/src/options_description.cpp \
    ../../Libraries/boost_1_53_0/libs/program_options/src/convert.cpp \
    ../../Libraries/boost_1_53_0/libs/program_options/src/config_file.cpp \
    ../../Libraries/boost_1_53_0/libs/program_options/src/cmdline.cpp

}
