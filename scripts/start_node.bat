@ECHO off

:: ��������
SET SERVER_ID=%1
SET NODE_ID=%2
SET IP=192.168.1.20
SET NODE_BASE=vt_dev
SET COOKIE=vt_dev
SET CONFIG=vtnemo

:: ��̬����
IF %SERVER_ID% EQU 0 (
    SET CONFIG=%CONFIG%_kf
) ELSE (
    SET CONFIG=%CONFIG%_s%SERVER_ID%
)

IF %NODE_ID% EQU 10 (
    SET NODE_NAME=%NODE_BASE%_s%SERVER_ID%@%IP%
	SET NODE_TITLE=s%SERVER_ID%
	SET COOKIE=%COOKIE%_s%SERVER_ID%
) ELSE (
	SET NODE_NAME=%NODE_BASE%_k%NODE_ID%@%IP%
	SET NODE_TITLE=k%NODE_ID%
	SET COOKIE=%COOKIE%_kf
)

:: ���ñ���
TITLE %NODE_TITLE%

:: �����ڵ�
CD ../
ECHO �����ڵ� - %NODE_ID%
erl +P 1024000 +K true -name %NODE_NAME% -setcookie %COOKIE% -connect_all false -config config\%CONFIG% -pa ebin -pa ebin_deps -s game start -extra %NODE_ID%
PAUSE