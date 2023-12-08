@echo off
SETLOCAL

rem RockWall Material

CALL :get_artifact RockWall/Export/MaterialLayers.psd https://github.com/realityforge/substance-designer-materials/releases/download/RockWall/MaterialLayers.psd
CALL :get_artifact RockWall/Export/RockWall.blend https://github.com/realityforge/substance-designer-materials/releases/download/RockWall/RockWall.blend
CALL :get_artifact RockWall/Export/RockWall.spp https://github.com/realityforge/substance-designer-materials/releases/download/RockWall/RockWall.spp

GOTO :exit

:get_artifact
set "local_file=%1"
set "url=%2"
if not exist "%local_file%" curl -L --output "%local_file%" "%url%"
if NOT ["%errorlevel%"]==["0"] (
    pause
    exit /b %errorlevel%
)
exit /b 0

:exit
exit /b
