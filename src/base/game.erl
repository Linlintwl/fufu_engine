%%% ----------------------------------------------------------------------------
%%% @author Ryuu
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%     game
%%% @end
%%% ----------------------------------------------------------------------------
-module(game).
-author("Ryuu").

%% Application callbacks
-export([
    start/0,
    stop/0,
    preload_codes/0
]).

-define(APP, vtnemo).
-define(APPS, [kernel, stdlib, sasl, goldrush, lager, mysql_poolboy, ?APP]).

%% @doc 启动游戏
start() ->
    preload_codes(),
    start_apps(?APPS),
    ok.

start_apps([]) ->
    ok;
start_apps([App | T]) ->
    application:ensure_all_started(App),
    start_apps(T).

%% @doc 结束游戏
stop() ->
    Apps = lists:reverse(?APPS),
    stop_apps(Apps),
    ok.

%% @doc 结束App
stop_apps(Apps) ->
    [stop_app(App) || App <- Apps].

stop_app(App) ->
    application:stop(App).

%% @doc preload
preload_codes() ->
    Paths = code:get_path(),
    RootDir = code:root_dir(),
    ScanPaths = [Path || Path <- Paths, string:prefix(filename:absname(Path), RootDir) =:= nomatch],
    [preload_dir(Path) || Path <- ScanPaths].

preload_dir(Path) ->
    FileNames = filelib:wildcard("*.beam", Path),
    [code:load_file(list_to_atom(filename:rootname(FileName))) || FileName <- FileNames].
