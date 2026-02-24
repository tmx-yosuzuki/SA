export CPPTEST_DIR=/opt/app/parasoft/20252/cpptest/
export PATH=${CPPTEST_DIR}:$PATH

export WORKSPACE_DIR=$PWD
export PROJECT_NAME=FlowAnalysis

cpptestcli \
-data $WORKSPACE_DIR \
-resource $PROJECT_NAME \
-config "${WORKSPACE_DIR}/../tools/TestConfig/1_フロー解析（チュートリアル）.properties" \
-report $WORKSPACE_DIR/report \
-showdetails \
-appconsole stdout
