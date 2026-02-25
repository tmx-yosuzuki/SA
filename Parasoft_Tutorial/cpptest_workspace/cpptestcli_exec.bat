set BUILD_TOOL_CHAIN_DIR=C:\cygwin64
set CPPTEST_DIR=C:\Parasoft\20252\cpptest
set PATH=%BUILD_TOOL_CHAIN_DIR%\bin;%CPPTEST_DIR%;%PATH%

set WORKSPACE_DIR=%~dp0
set PROJECT_NAME=FlowAnalysis

cpptestcli ^
-data %WORKSPACE_DIR% ^
-bdf %WORKSPACE_DIR%\%PROJECT_NAME%\cpptestscan.bdf ^
-resource %PROJECT_NAME% ^
-config "%~dp0..\tools\TestConfig\1_フロー解析（チュートリアル）.properties" ^
-report %WORKSPACE_DIR%\report ^
-showdetails ^
-appconsole stdout
