#
wget https://pocoproject.org/releases/poco-1.9.0/poco-1.9.0-all.tar.gz
tar xvf poco-1.9.0-all.tar.gz
cd poco-1.9.0
#//modify 
./configure --config=ARM-Linux --prefix=/home/byteman/work/facego-3559a/extlib/install/poco --no-tests --no-samples --omit=Data/MySQL,Data/ODBC,Crypto,NetSSL_OpenSSL,PageCompiler,PageCompiler/File2Page,MongoDB,Redis --static
