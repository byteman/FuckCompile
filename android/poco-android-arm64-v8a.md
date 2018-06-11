思路和技巧

poco自带的编译脚本不支持android arm64的编译，所以我们需要查找到android ndk arm64 的编译命令，直接用ndk的android.mk配置好arm64-v8a平台，然后加入
ndk-build V=1 命令来编译，发现需要指定 3个头文件路径，和一个sysroot的路径

最后再编译poco的json库的时候，他外部依赖一个c语言版本的json库，这个json库使用了c99的最新标准，所以需要在-cflags中加入c99的支持。


./configure --config=Android --prefix=$PWD/output --no-tests --no-samples 
	--omit=Data,Data/SQLite,Data/ODBC,Data/MySQL,CppUnit,CppUnit/WinTestRunner,Crypto,NetSSL_OpenSSL,PageCompiler,PageCompiler/File2Page,MongoDB,Redis 
	--static 
	--include-path=/home/byteman/work/android-ndk-r15c/sources/cxx-stl/gnu-libstdc++/4.9/include,
	/home/byteman/work/android-ndk-r15c/sources/cxx-stl/gnu-libstdc++/4.9/libs/arm64-v8a/include,
	/home/byteman/work/android-ndk-r15c/sources/cxx-stl/gnu-libstdc++/4.9/include/backword 
	--cflags="-std=c99 --sysroot /home/byteman/work/android-ndk-r15c/platforms/android-21/arch-arm64" 