:: ���̲߳��б��룬�����ٶȱȽϿ�(ֻ����vtnemo)
@ECHO off

:: ���ñ���
TITLE compile_game

CD ..
:start
SET choice=Y
ECHO "Compiling game ..."
erl -noshell -pa ebin_deps -eval "case make:files([\"./src/tools/mmake.erl\"]) of error -> halt(1); _ -> ok end" -eval "case mmake:all(5) of up_to_date -> halt(0); error -> halt(1) end."
ECHO
ECHO "Compile finished !!!"
SET /P choice= �Ѿ�������ɣ���������?(Y/N):
IF %choice%==N GOTO end
IF %choice%==n GOTO end

GOTO start
:end