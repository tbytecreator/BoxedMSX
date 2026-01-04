mode 80
echo =================================
echo TBYTECREATOR AUTOEXEC.BAT
echo =================================
ver
path %1\utils
set expert=on
set BACKSLASH ON
if not "%_MSXVER%" == "Turbo-R" alias mode "@MODE %1"
if %BACKSLASH% == ON YENSLASH ON
echo =================================