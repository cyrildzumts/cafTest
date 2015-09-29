#############################################################################
# Makefile for building: CafActorTest
# Generated by qmake (3.0) (Qt 5.4.1)
# Project:  CafActorTest.pro
# Template: subdirs
# Command: /home/cyrildz/Qt/Qt5.4/5.4/gcc_64/bin/qmake -spec linux-g++ CONFIG+=debug -o Makefile CafActorTest.pro
#############################################################################

MAKEFILE      = Makefile

first: make_first
QMAKE         = /home/cyrildz/Qt/Qt5.4/5.4/gcc_64/bin/qmake
DEL_FILE      = rm -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
COPY          = cp -f
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
INSTALL_FILE  = install -m 644 -p
INSTALL_PROGRAM = install -m 755 -p
INSTALL_DIR   = $(COPY_DIR)
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
TAR           = tar -cf
COMPRESS      = gzip -9f
DISTNAME      = CafActorTest1.0.0
DISTDIR = /home/cyrildz/Project/CafActorTest/.tmp/CafActorTest1.0.0
SUBTARGETS    =  \
		sub-FunctionEvaluator \
		sub-SimpleChatClient \
		sub-SimpleChatServer \
		sub-FortuneServer


sub-FunctionEvaluator-qmake_all:  FORCE
	@test -d FunctionEvaluator/ || mkdir -p FunctionEvaluator/
	cd FunctionEvaluator/ && $(QMAKE) /home/cyrildz/Project/CafActorTest/FunctionEvaluator/FunctionEvaluator.pro -spec linux-g++ CONFIG+=debug -o Makefile
	cd FunctionEvaluator/ && $(MAKE) -f Makefile qmake_all
sub-FunctionEvaluator: FORCE
	@test -d FunctionEvaluator/ || mkdir -p FunctionEvaluator/
	cd FunctionEvaluator/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/FunctionEvaluator/FunctionEvaluator.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile
sub-FunctionEvaluator-make_first: FORCE
	@test -d FunctionEvaluator/ || mkdir -p FunctionEvaluator/
	cd FunctionEvaluator/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/FunctionEvaluator/FunctionEvaluator.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile 
sub-FunctionEvaluator-all: FORCE
	@test -d FunctionEvaluator/ || mkdir -p FunctionEvaluator/
	cd FunctionEvaluator/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/FunctionEvaluator/FunctionEvaluator.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile all
sub-FunctionEvaluator-clean: FORCE
	@test -d FunctionEvaluator/ || mkdir -p FunctionEvaluator/
	cd FunctionEvaluator/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/FunctionEvaluator/FunctionEvaluator.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile clean
sub-FunctionEvaluator-distclean: FORCE
	@test -d FunctionEvaluator/ || mkdir -p FunctionEvaluator/
	cd FunctionEvaluator/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/FunctionEvaluator/FunctionEvaluator.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile distclean
sub-FunctionEvaluator-install_subtargets: FORCE
	@test -d FunctionEvaluator/ || mkdir -p FunctionEvaluator/
	cd FunctionEvaluator/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/FunctionEvaluator/FunctionEvaluator.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile install
sub-FunctionEvaluator-uninstall_subtargets: FORCE
	@test -d FunctionEvaluator/ || mkdir -p FunctionEvaluator/
	cd FunctionEvaluator/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/FunctionEvaluator/FunctionEvaluator.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile uninstall
sub-SimpleChatClient-qmake_all:  FORCE
	@test -d SimpleChatClient/ || mkdir -p SimpleChatClient/
	cd SimpleChatClient/ && $(QMAKE) /home/cyrildz/Project/CafActorTest/SimpleChatClient/SimpleChatClient.pro -spec linux-g++ CONFIG+=debug -o Makefile
	cd SimpleChatClient/ && $(MAKE) -f Makefile qmake_all
sub-SimpleChatClient: FORCE
	@test -d SimpleChatClient/ || mkdir -p SimpleChatClient/
	cd SimpleChatClient/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/SimpleChatClient/SimpleChatClient.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile
sub-SimpleChatClient-make_first: FORCE
	@test -d SimpleChatClient/ || mkdir -p SimpleChatClient/
	cd SimpleChatClient/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/SimpleChatClient/SimpleChatClient.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile 
sub-SimpleChatClient-all: FORCE
	@test -d SimpleChatClient/ || mkdir -p SimpleChatClient/
	cd SimpleChatClient/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/SimpleChatClient/SimpleChatClient.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile all
sub-SimpleChatClient-clean: FORCE
	@test -d SimpleChatClient/ || mkdir -p SimpleChatClient/
	cd SimpleChatClient/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/SimpleChatClient/SimpleChatClient.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile clean
sub-SimpleChatClient-distclean: FORCE
	@test -d SimpleChatClient/ || mkdir -p SimpleChatClient/
	cd SimpleChatClient/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/SimpleChatClient/SimpleChatClient.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile distclean
sub-SimpleChatClient-install_subtargets: FORCE
	@test -d SimpleChatClient/ || mkdir -p SimpleChatClient/
	cd SimpleChatClient/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/SimpleChatClient/SimpleChatClient.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile install
sub-SimpleChatClient-uninstall_subtargets: FORCE
	@test -d SimpleChatClient/ || mkdir -p SimpleChatClient/
	cd SimpleChatClient/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/SimpleChatClient/SimpleChatClient.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile uninstall
sub-SimpleChatServer-qmake_all:  FORCE
	@test -d SimpleChatServer/ || mkdir -p SimpleChatServer/
	cd SimpleChatServer/ && $(QMAKE) /home/cyrildz/Project/CafActorTest/SimpleChatServer/SimpleChatServer.pro -spec linux-g++ CONFIG+=debug -o Makefile
	cd SimpleChatServer/ && $(MAKE) -f Makefile qmake_all
sub-SimpleChatServer: FORCE
	@test -d SimpleChatServer/ || mkdir -p SimpleChatServer/
	cd SimpleChatServer/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/SimpleChatServer/SimpleChatServer.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile
sub-SimpleChatServer-make_first: FORCE
	@test -d SimpleChatServer/ || mkdir -p SimpleChatServer/
	cd SimpleChatServer/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/SimpleChatServer/SimpleChatServer.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile 
sub-SimpleChatServer-all: FORCE
	@test -d SimpleChatServer/ || mkdir -p SimpleChatServer/
	cd SimpleChatServer/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/SimpleChatServer/SimpleChatServer.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile all
sub-SimpleChatServer-clean: FORCE
	@test -d SimpleChatServer/ || mkdir -p SimpleChatServer/
	cd SimpleChatServer/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/SimpleChatServer/SimpleChatServer.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile clean
sub-SimpleChatServer-distclean: FORCE
	@test -d SimpleChatServer/ || mkdir -p SimpleChatServer/
	cd SimpleChatServer/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/SimpleChatServer/SimpleChatServer.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile distclean
sub-SimpleChatServer-install_subtargets: FORCE
	@test -d SimpleChatServer/ || mkdir -p SimpleChatServer/
	cd SimpleChatServer/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/SimpleChatServer/SimpleChatServer.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile install
sub-SimpleChatServer-uninstall_subtargets: FORCE
	@test -d SimpleChatServer/ || mkdir -p SimpleChatServer/
	cd SimpleChatServer/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/SimpleChatServer/SimpleChatServer.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile uninstall
sub-FortuneServer-qmake_all:  FORCE
	@test -d FortuneServer/ || mkdir -p FortuneServer/
	cd FortuneServer/ && $(QMAKE) /home/cyrildz/Project/CafActorTest/FortuneServer/FortuneServer.pro -spec linux-g++ CONFIG+=debug -o Makefile
	cd FortuneServer/ && $(MAKE) -f Makefile qmake_all
sub-FortuneServer: FORCE
	@test -d FortuneServer/ || mkdir -p FortuneServer/
	cd FortuneServer/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/FortuneServer/FortuneServer.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile
sub-FortuneServer-make_first: FORCE
	@test -d FortuneServer/ || mkdir -p FortuneServer/
	cd FortuneServer/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/FortuneServer/FortuneServer.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile 
sub-FortuneServer-all: FORCE
	@test -d FortuneServer/ || mkdir -p FortuneServer/
	cd FortuneServer/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/FortuneServer/FortuneServer.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile all
sub-FortuneServer-clean: FORCE
	@test -d FortuneServer/ || mkdir -p FortuneServer/
	cd FortuneServer/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/FortuneServer/FortuneServer.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile clean
sub-FortuneServer-distclean: FORCE
	@test -d FortuneServer/ || mkdir -p FortuneServer/
	cd FortuneServer/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/FortuneServer/FortuneServer.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile distclean
sub-FortuneServer-install_subtargets: FORCE
	@test -d FortuneServer/ || mkdir -p FortuneServer/
	cd FortuneServer/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/FortuneServer/FortuneServer.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile install
sub-FortuneServer-uninstall_subtargets: FORCE
	@test -d FortuneServer/ || mkdir -p FortuneServer/
	cd FortuneServer/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/FortuneServer/FortuneServer.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile uninstall

Makefile: CafActorTest.pro ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/linux-g++/qmake.conf ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/spec_pre.prf \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/common/shell-unix.conf \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/common/unix.conf \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/common/linux.conf \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/common/gcc-base.conf \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/common/gcc-base-unix.conf \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/common/g++-base.conf \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/common/g++-unix.conf \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/qconfig.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_bluetooth.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_bluetooth_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_bootstrap_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_clucene_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_concurrent.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_concurrent_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_core.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_core_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_dbus.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_dbus_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_declarative.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_declarative_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_designer.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_designer_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_designercomponents_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_enginio.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_enginio_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_gui.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_gui_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_help.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_help_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_location.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_location_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_multimedia.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_multimedia_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_multimediawidgets.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_multimediawidgets_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_network.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_network_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_nfc.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_nfc_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_opengl.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_opengl_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_openglextensions.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_openglextensions_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_platformsupport_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_positioning.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_positioning_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_printsupport.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_printsupport_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_qml.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_qml_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_qmltest.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_qmltest_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_quick.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_quick_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_quickparticles_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_quickwidgets.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_quickwidgets_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_script.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_script_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_scripttools.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_scripttools_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_sensors.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_sensors_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_serialport.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_serialport_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_sql.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_sql_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_svg.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_svg_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_testlib.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_testlib_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_uitools.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_uitools_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webchannel.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webchannel_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webengine.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webengine_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webenginecore.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webenginecore_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webenginewidgets.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webenginewidgets_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webkit.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webkit_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webkitwidgets.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webkitwidgets_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_websockets.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_websockets_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webview.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webview_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_widgets.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_widgets_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_x11extras.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_x11extras_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_xml.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_xml_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_xmlpatterns.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_xmlpatterns_private.pri \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/qt_functions.prf \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/qt_config.prf \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/linux-g++/qmake.conf \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/spec_post.prf \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/exclusive_builds.prf \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/default_pre.prf \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/resolve_config.prf \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/default_post.prf \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/warn_on.prf \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/testcase_targets.prf \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/exceptions.prf \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/yacc.prf \
		../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/lex.prf \
		CafActorTest.pro
	$(QMAKE) -spec linux-g++ CONFIG+=debug -o Makefile CafActorTest.pro
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/spec_pre.prf:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/common/shell-unix.conf:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/common/unix.conf:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/common/linux.conf:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/common/gcc-base.conf:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/common/gcc-base-unix.conf:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/common/g++-base.conf:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/common/g++-unix.conf:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/qconfig.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_bluetooth.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_bluetooth_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_bootstrap_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_clucene_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_concurrent.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_concurrent_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_core.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_core_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_dbus.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_dbus_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_declarative.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_declarative_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_designer.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_designer_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_designercomponents_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_enginio.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_enginio_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_gui.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_gui_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_help.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_help_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_location.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_location_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_multimedia.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_multimedia_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_multimediawidgets.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_multimediawidgets_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_network.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_network_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_nfc.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_nfc_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_opengl.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_opengl_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_openglextensions.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_openglextensions_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_platformsupport_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_positioning.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_positioning_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_printsupport.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_printsupport_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_qml.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_qml_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_qmldevtools_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_qmltest.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_qmltest_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_quick.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_quick_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_quickparticles_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_quickwidgets.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_quickwidgets_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_script.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_script_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_scripttools.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_scripttools_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_sensors.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_sensors_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_serialport.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_serialport_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_sql.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_sql_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_svg.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_svg_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_testlib.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_testlib_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_uitools.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_uitools_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webchannel.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webchannel_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webengine.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webengine_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webenginecore.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webenginecore_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webenginewidgets.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webenginewidgets_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webkit.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webkit_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webkitwidgets.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webkitwidgets_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_websockets.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_websockets_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webview.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webview_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_widgets.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_widgets_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_x11extras.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_x11extras_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_xml.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_xml_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_xmlpatterns.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_xmlpatterns_private.pri:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/qt_functions.prf:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/qt_config.prf:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/linux-g++/qmake.conf:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/spec_post.prf:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/exclusive_builds.prf:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/default_pre.prf:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/resolve_config.prf:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/default_post.prf:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/warn_on.prf:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/testcase_targets.prf:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/exceptions.prf:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/yacc.prf:
../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/lex.prf:
CafActorTest.pro:
qmake: FORCE
	@$(QMAKE) -spec linux-g++ CONFIG+=debug -o Makefile CafActorTest.pro

qmake_all: sub-FunctionEvaluator-qmake_all sub-SimpleChatClient-qmake_all sub-SimpleChatServer-qmake_all sub-FortuneServer-qmake_all FORCE

make_first: sub-FunctionEvaluator-make_first sub-SimpleChatClient-make_first sub-SimpleChatServer-make_first sub-FortuneServer-make_first FORCE
all: sub-FunctionEvaluator-all sub-SimpleChatClient-all sub-SimpleChatServer-all sub-FortuneServer-all FORCE
clean: sub-FunctionEvaluator-clean sub-SimpleChatClient-clean sub-SimpleChatServer-clean sub-FortuneServer-clean FORCE
distclean: sub-FunctionEvaluator-distclean sub-SimpleChatClient-distclean sub-SimpleChatServer-distclean sub-FortuneServer-distclean FORCE
	-$(DEL_FILE) Makefile
install_subtargets: sub-FunctionEvaluator-install_subtargets sub-SimpleChatClient-install_subtargets sub-SimpleChatServer-install_subtargets sub-FortuneServer-install_subtargets FORCE
uninstall_subtargets: sub-FunctionEvaluator-uninstall_subtargets sub-SimpleChatClient-uninstall_subtargets sub-SimpleChatServer-uninstall_subtargets sub-FortuneServer-uninstall_subtargets FORCE

sub-FunctionEvaluator-check:
	@test -d FunctionEvaluator/ || mkdir -p FunctionEvaluator/
	cd FunctionEvaluator/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/FunctionEvaluator/FunctionEvaluator.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile check
sub-SimpleChatClient-check:
	@test -d SimpleChatClient/ || mkdir -p SimpleChatClient/
	cd SimpleChatClient/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/SimpleChatClient/SimpleChatClient.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile check
sub-SimpleChatServer-check:
	@test -d SimpleChatServer/ || mkdir -p SimpleChatServer/
	cd SimpleChatServer/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/SimpleChatServer/SimpleChatServer.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile check
sub-FortuneServer-check:
	@test -d FortuneServer/ || mkdir -p FortuneServer/
	cd FortuneServer/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/FortuneServer/FortuneServer.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -f Makefile check
check: sub-FunctionEvaluator-check sub-SimpleChatClient-check sub-SimpleChatServer-check sub-FortuneServer-check
install: install_subtargets  FORCE

uninstall:  uninstall_subtargets FORCE

FORCE:

dist: distdir FORCE
	(cd `dirname $(DISTDIR)` && $(TAR) $(DISTNAME).tar $(DISTNAME) && $(COMPRESS) $(DISTNAME).tar) && $(MOVE) `dirname $(DISTDIR)`/$(DISTNAME).tar.gz . && $(DEL_FILE) -r $(DISTDIR)

distdir: sub-FunctionEvaluator-distdir sub-SimpleChatClient-distdir sub-SimpleChatServer-distdir sub-FortuneServer-distdir FORCE
	@test -d $(DISTDIR) || mkdir -p $(DISTDIR)
	$(COPY_FILE) --parents ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/spec_pre.prf ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/common/shell-unix.conf ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/common/unix.conf ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/common/linux.conf ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/common/gcc-base.conf ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/common/gcc-base-unix.conf ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/common/g++-base.conf ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/common/g++-unix.conf ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/qconfig.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_bluetooth.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_bluetooth_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_bootstrap_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_clucene_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_concurrent.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_concurrent_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_core.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_core_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_dbus.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_dbus_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_declarative.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_declarative_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_designer.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_designer_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_designercomponents_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_enginio.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_enginio_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_gui.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_gui_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_help.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_help_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_location.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_location_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_multimedia.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_multimedia_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_multimediawidgets.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_multimediawidgets_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_network.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_network_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_nfc.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_nfc_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_opengl.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_opengl_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_openglextensions.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_openglextensions_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_platformsupport_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_positioning.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_positioning_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_printsupport.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_printsupport_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_qml.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_qml_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_qmldevtools_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_qmltest.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_qmltest_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_quick.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_quick_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_quickparticles_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_quickwidgets.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_quickwidgets_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_script.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_script_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_scripttools.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_scripttools_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_sensors.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_sensors_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_serialport.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_serialport_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_sql.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_sql_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_svg.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_svg_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_testlib.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_testlib_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_uitools.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_uitools_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webchannel.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webchannel_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webengine.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webengine_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webenginecore.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webenginecore_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webenginewidgets.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webenginewidgets_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webkit.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webkit_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webkitwidgets.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webkitwidgets_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_websockets.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_websockets_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webview.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_webview_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_widgets.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_widgets_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_x11extras.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_x11extras_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_xml.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_xml_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_xmlpatterns.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/modules/qt_lib_xmlpatterns_private.pri ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/qt_functions.prf ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/qt_config.prf ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/linux-g++/qmake.conf ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/spec_post.prf ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/exclusive_builds.prf ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/default_pre.prf ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/resolve_config.prf ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/default_post.prf ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/warn_on.prf ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/testcase_targets.prf ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/exceptions.prf ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/yacc.prf ../../Qt/Qt5.4/5.4/gcc_64/mkspecs/features/lex.prf CafActorTest.pro $(DISTDIR)/

sub-FunctionEvaluator-distdir: FORCE
	@test -d FunctionEvaluator/ || mkdir -p FunctionEvaluator/
	cd FunctionEvaluator/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/FunctionEvaluator/FunctionEvaluator.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -e -f Makefile distdir DISTDIR=$(DISTDIR)/FunctionEvaluator

sub-SimpleChatClient-distdir: FORCE
	@test -d SimpleChatClient/ || mkdir -p SimpleChatClient/
	cd SimpleChatClient/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/SimpleChatClient/SimpleChatClient.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -e -f Makefile distdir DISTDIR=$(DISTDIR)/SimpleChatClient

sub-SimpleChatServer-distdir: FORCE
	@test -d SimpleChatServer/ || mkdir -p SimpleChatServer/
	cd SimpleChatServer/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/SimpleChatServer/SimpleChatServer.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -e -f Makefile distdir DISTDIR=$(DISTDIR)/SimpleChatServer

sub-FortuneServer-distdir: FORCE
	@test -d FortuneServer/ || mkdir -p FortuneServer/
	cd FortuneServer/ && ( test -e Makefile || $(QMAKE) /home/cyrildz/Project/CafActorTest/FortuneServer/FortuneServer.pro -spec linux-g++ CONFIG+=debug -o Makefile ) && $(MAKE) -e -f Makefile distdir DISTDIR=$(DISTDIR)/FortuneServer

