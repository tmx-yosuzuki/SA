set BUILD_TOOL_CHAIN_DIR=C:\cygwin64\bin
set CPPTEST_DIR=C:\Parasoft\20252\cpptest
set PATH=%BUILD_TOOL_CHAIN_DIR%\bin;%CPPTEST_DIR%;%PATH%
cpptest -clean -data %~dp0..\cpptest_workspace