编译说明

这个主要需要支持编译静态库，他所依赖的库是一个动态库，动态库在编译的时候都需要-fPIC参数，因此，也需要把poco编译的时候也指定-fPIC参数

将目录下的ARM-3359A-Linux拷贝到poco/build/config/下面 ARM-Linux

执行./build-3359a.sh脚本既可编译生成对应的so和a库