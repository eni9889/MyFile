export CC=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang
export SYSROOT=/var/mobile/sysroot

all:
	make -C src

clean:
	make clean -C src

