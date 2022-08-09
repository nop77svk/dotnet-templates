@echo off
pushd "%~dp0"
for /r /d %%d in (.template.config) do (
	if exist "%%~d\template.json" (
		pushd %%d\..
		dotnet new -u .
		dotnet new -i .
		popd
	)
)
popd
exit /b 0
