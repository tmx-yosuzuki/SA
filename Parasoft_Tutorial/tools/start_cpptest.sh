#Linuxはディストリビューションに含まれるGCCを用いるため
#BUILD_TOOL_CHAINは不要

export CPPTEST_DIR=/opt/app/parasoft/20252/cpptest/
export PATH=${PATH}:${CPPTEST_DIR}
cpptest -clean -data ../cpptest_workspace

