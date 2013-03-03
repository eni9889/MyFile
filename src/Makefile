PROJECT = MyFile

PROJECTOBJECTS = $(shell ./getobjname.sh)

OBJECTS =  ${PROJECTOBJECTS}
OBJECTS += $(shell ./getobjname.sh -o Categories)
OBJECTS += $(shell ./getobjname.sh -o Crypto)
OBJECTS += $(shell ./getobjname.sh -o DropboxSDK)
OBJECTS += $(shell ./getobjname.sh -o FBConnect)
OBJECTS += $(shell ./getobjname.sh -o libarchive)
OBJECTS += $(shell ./getobjname.sh -o libjpeg)
OBJECTS += $(shell ./getobjname.sh -o libsqlitemanager)
OBJECTS += $(shell ./getobjname.sh -o MGTwitterEngine)
OBJECTS += $(shell ./getobjname.sh -o mongoose)
OBJECTS += $(shell ./getobjname.sh -o MPOAuth)
OBJECTS += $(shell ./getobjname.sh -o OAuthConsumer)
OBJECTS += $(shell ./getobjname.sh -o PullToRefresh)
OBJECTS += $(shell ./getobjname.sh -o SAOAuthTwitterEngine)
OBJECTS += $(shell ./getobjname.sh -o SBJSON)
OBJECTS += $(shell ./getobjname.sh -o TouchJSON)

CC = /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang
LD = ${CC}
CFLAGS = -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS6.1.sdk \
	-I/opt/iOSOpenDev/include\
	-I/opt/local/include\
	-I/opt/local/include/glib-2.0 \
	-I/opt/local/lib/glib-2.0/include \
	 -w \
	 -std=gnu99 \
	 -c \
	 -x objective-c \
	 -arch armv7 \
	 -I/usr/include/glib-2.0 \
	 -I/usr/include/gpod-1.0 \
	 -I. \
	 -ICategories \
	 -ICrypto \
	 -IDropboxSDK \
	 -IFBConnect \
	 -Ilibarchive \
	 -Ilibjpeg \
	 -Ilibsqlitemanager \
	 -IMGTwitterEngine \
	 -Imongoose \
	 -IMPOAuth \
	 -IOAuthConsumer \
	 -IPullToRefresh \
	 -ISAOAuthTwitterEngine \
	 -ISBJSON \
	 -ITouchJSON \
	 -DTARGET_OS_IPHONE=1 \
	 -DUSE_LIBXML=1 \
	 -c \
	 -x objective-c \
	 -arch armv7 \
	 -DTOUCHJSON_AVAILABLE=1 \
	 -w
LDFLAGS =-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS6.1.sdk \
	-I/opt/iOSOpenDev/include\
	-I/opt/local/include\
	-I/opt/local/include/glib-2.0 \
	-I/opt/local/lib/glib-2.0/include \
	 -w \
	 -lobjc \
	 -lxml2 \
	 -lsqlite3 \
	 -lcrypto \
	 -lz \
	 -lzip \
	 -lbz2 \
	 -lid3tag \
	 -lexif \
	 -lglib-2.0 \
	 -lgpod \
     -arch armv7 \
	 -framework CoreFoundation \
	 -framework Foundation \
	 -framework CoreGraphics \
	 -framework QuartzCore \
	 -framework UIKit \
	 -framework AVFoundation \
	 -framework MediaPlayer \
	 -framework MessageUI \
	 -framework QuickLook \
	 -framework Security \
	 -framework MFMusicLibrary

all: ${PROJECT}

${PROJECT}: ${PROJECTOBJECTS}
	make -C Categories
	make -C Crypto
	make -C DropboxSDK
	make -C FBConnect
	make -C libarchive
	make -C libjpeg
	make -C libsqlitemanager
	make -C MGTwitterEngine
	make -C mongoose
	make -C MPOAuth
	make -C OAuthConsumer
	make -C PullToRefresh
	make -C SAOAuthTwitterEngine
	make -C SBJSON
	make -C TouchJSON
	${LD} ${LDFLAGS} -o ${PROJECT}_ ${OBJECTS}
	ldid -S ${PROJECT}_
	ldid -s ${PROJECT}_
	sudo chmod 4777 ${PROJECT}_
	sudo chown root ${PROJECT}_
	rm -rf ../bld/org.h2co3.myfile/Applications/${PROJECT}.app/${PROJECT}_
	cp ${PROJECT}_ ../bld/org.h2co3.myfile/Applications/${PROJECT}.app/
	scp ${PROJECT}_ root@192.168.2.4:/Applications/MyFile.app

%.o: %.m
	${CC} ${CFLAGS} -o $@ $^

%.o: %.c
	${CC} ${CFLAGS} -o $@ $^

clean:
	make clean -C Categories
	make clean -C Crypto
	make clean -C DropboxSDK
	make clean -C FBConnect
	make clean -C libarchive
	make clean -C libjpeg
	make clean -C libsqlitemanager
	make clean -C MGTwitterEngine
	make clean -C mongoose
	make clean -C MPOAuth
	make clean -C OAuthConsumer
	make clean -C PullToRefresh
	make clean -C SAOAuthTwitterEngine
	make clean -C SBJSON
	make clean -C TouchJSON
	rm -rf ${PROJECTOBJECTS} ${PROJECT}_

