# パス設定

export CPPTEST_TRACE_DIR=/opt/app/cpptest/bin
export PATH=${CPPTEST_TRACE_DIR}:$PATH
export PROJECT_DIR=$PWD

# ---FlowAnalysis---
# ビルドデータファイル作成のための環境変数設定
export CPPTEST_SCAN_OUTPUT_FILE=${PROJECT_DIR}/FlowAnalysis/cpptestscan.bdf
export CPPTEST_SCAN_PROJECT_NAME=FlowAnalysis
# export CPPTEST_SCAN_TRACE_COMMAND=gcc^|g\+\+

# ビルドデータファイル作成
cd ${PROJECT_DIR}/FlowAnalysis
rm -f ${PROJECT_DIR}/FlowAnalysis/cpptestscan.bdf
make clean
cpptesttrace  make

# ---FlowAnalysisCpp---
export CPPTEST_SCAN_OUTPUT_FILE=${PROJECT_DIR}/FlowAnalysisCpp/cpptestscan.bdf
export CPPTEST_SCAN_PROJECT_NAME=FlowAnalysisCpp
# export CPPTEST_SCAN_TRACE_COMMAND=gcc^|g\+\+

cd ${PROJECT_DIR}/FlowAnalysisCpp
rm -f ${PROJECT_DIR}/FlowAnalysisCpp/cpptestscan.bdf
make clean
cpptesttrace  make

# ---Security---
export CPPTEST_SCAN_OUTPUT_FILE=${PROJECT_DIR}/Security/cpptestscan.bdf
export CPPTEST_SCAN_PROJECT_NAME=Security
# export CPPTEST_SCAN_TRACE_COMMAND=gcc^|g\+\+

cd ${PROJECT_DIR}/Security
rm -f ${PROJECT_DIR}/Security/cpptestscan.bdf
make clean
cpptesttrace  make

# ---Shapes---
export CPPTEST_SCAN_OUTPUT_FILE=${PROJECT_DIR}/Shapes/cpptestscan.bdf
export CPPTEST_SCAN_PROJECT_NAME=Shapes
# export CPPTEST_SCAN_TRACE_COMMAND=gcc^|g\+\+

cd ${PROJECT_DIR}/Shapes
rm -f ${PROJECT_DIR}/Shapes/cpptestscan.bdf
make clean
cpptesttrace  make
