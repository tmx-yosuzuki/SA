REM パス設定
REM set BUILD_TOOL_CHAIN_DIR=C:\cygwin64
REM set CPPTEST_TRACE_DIR=C:\Parasoft\20252\cpptest\bin
REM set PATH=%BUILD_TOOL_CHAIN_DIR%\bin;%CPPTEST_TRACE_DIR%;%PATH%
set PROJECT_DIR=%~dp0


REM ---FlowAnalysis---
REM ビルドデータファイル作成のための環境変数設定
set CPPTEST_SCAN_OUTPUT_FILE=%PROJECT_DIR%\FlowAnalysis\cpptestscan.bdf
set CPPTEST_SCAN_PROJECT_NAME=FlowAnalysis
REM set CPPTEST_SCAN_TRACE_COMMAND=gcc^|g\+\+

REM ビルドデータファイル作成
cd %PROJECT_DIR%\FlowAnalysis
del /F %PROJECT_DIR%\FlowAnalysis\cpptestscan.bdf
make clean
cpptesttrace  make


REM ---FlowAnalysisCpp---
set CPPTEST_SCAN_OUTPUT_FILE=%PROJECT_DIR%\FlowAnalysisCpp\cpptestscan.bdf
set CPPTEST_SCAN_PROJECT_NAME=FlowAnalysisCpp
REM set CPPTEST_SCAN_TRACE_COMMAND=gcc^|g\+\+

cd %PROJECT_DIR%\FlowAnalysisCpp
del /F %PROJECT_DIR%\FlowAnalysisCpp\cpptestscan.bdf
make clean
cpptesttrace  make


REM ---Security---
set CPPTEST_SCAN_OUTPUT_FILE=%PROJECT_DIR%\Security\cpptestscan.bdf
set CPPTEST_SCAN_PROJECT_NAME=Security
REM set CPPTEST_SCAN_TRACE_COMMAND=gcc^|g\+\+

cd %PROJECT_DIR%\Security
del /F %PROJECT_DIR%\Security\cpptestscan.bdf
make clean
cpptesttrace  make


REM ---Shapes---
set CPPTEST_SCAN_OUTPUT_FILE=%PROJECT_DIR%\Shapes\cpptestscan.bdf
set CPPTEST_SCAN_PROJECT_NAME=Shapes
REM set CPPTEST_SCAN_TRACE_COMMAND=gcc^|g\+\+

cd %PROJECT_DIR%\Shapes
del /F %PROJECT_DIR%\Shapes\cpptestscan.bdf
make clean
cpptesttrace  make
