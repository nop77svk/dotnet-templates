@echo off
pushd "%~dp0"
for /r /d %%d in (.template.config) do (
	if exist "%%~d\template.json" (
		echo %%d
		pushd %%d\..
		dotnet new uninstall .
		dotnet new install .
		popd
	)
)
popd
exit /b 0
