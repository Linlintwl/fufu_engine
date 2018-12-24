%%-------------------------------------------------------
%% @File     : hot
%% @Brief    : 热更模块
%% @Author   : cablsbs
%% @Date     : 2018-9-21
%%-------------------------------------------------------
-module(hot).

-include("common.hrl").

-export([
    hot_reload/0,
    scan_changed/0
]).

-ifndef(app_ebin).
-define(EBIN_PATH, "ebin/").
-else.
-define(EBIN_PATH, ?app_ebin).
-endif.


%% Apis -------------------------------------------------
% @doc 智能热更
hot_reload() ->
    ChangedMods = scan_changed(),
    [c:nl(Mod) || Mod <- ChangedMods],
    ChangedMods.

% @doc 获取改变的beam
scan_changed() ->
    AllBeam = all_beam(?EBIN_PATH),
    ScanFun = fun(Beam, AccModules) ->
        ModStr = filename:basename(Beam, ".beam"),
        Module = list_to_atom(ModStr),
        Md5 = Module:module_info(md5),
        BeamFileName = ?EBIN_PATH ++ Beam,
        {ok, {_, Md5N}} = beam_lib:md5(BeamFileName),
        case Md5 =:= Md5N of
            true -> AccModules;
            false -> [Module | AccModules]
        end
    end,
    lists:foldl(ScanFun, [], AllBeam).


%% Privates ---------------------------------------------
% @doc 获取指定目录下所有模块
all_beam(EbinDir) ->
    filelib:wildcard("*.beam", type:object_to_list(EbinDir)).
