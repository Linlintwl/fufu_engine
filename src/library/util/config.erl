%%% ----------------------------------------------------------------------------
%%% @author Ryuu
%%% @copyright (C) 2018, Nemo
%%% @doc
%%%     配置
%%% @end
%%% ----------------------------------------------------------------------------
-module(config).
-author("Ryuu").

-include("common.hrl").

%% API
-export([
    get_miji/0,
    is_debug/0,
    get_string/1,
    get_ticket/0,
    get_platform/0,
    get_server_num/0,
    get_server_name/0,
    get_server_ip/0,
    get_server_port/0,
    get_sys_config/1,
    get_sys_config/2
]).

%% @doc 获取平台号
get_platform() ->
    case application:get_env(?APP_NAME, platform) of
        {ok, Platform} when is_integer(Platform) ->
            Platform;
        _ ->
            ?DEFAULT_PLATFORM
    end.

%% @doc 获取当前服id
get_server_num() ->
    case application:get_env(?APP_NAME, server_num) of
        {ok, ServerNum} when is_integer(ServerNum) ->
            ServerNum;
        _ ->
            ?DEFAULT_SERVER_NUM
    end.

%% @doc 获取当前服名
get_server_name() ->
    case application:get_env(?APP_NAME, server_name) of
        {ok, ServerName} ->
            ServerName;
        _ ->
            ?DEFAULT_SERVER_NAME
    end.

%% @doc 获取当前服ip
get_server_ip() ->
    case application:get_env(?APP_NAME, server_ip) of
        {ok, ServerIp} ->
            ServerIp;
        _ ->
            ?DEFAULT_SERVER_IP
    end.

%% @doc 获取当前服端口号
get_server_port() ->
    case application:get_env(?APP_NAME, server_port) of
        {ok, ServerPort} when is_integer(ServerPort) ->
            ServerPort;
        _ ->
            ?DEFAULT_SERVER_PORT
    end.

%% 私钥
get_ticket() ->
    case application:get_env(?APP_NAME, ticket) of
        {ok, Ticket} -> Ticket;
        _ -> "ticket"
    end.

%% @doc 获取开秘籍标志位
get_miji() ->
    case application:get_env(?APP_NAME, miji) of
        {ok, Num} -> Num;
        _ -> 0
    end.

%% @doc 是否测试环境
is_debug() ->
    case application:get_env(?APP_NAME, debug) of
        {ok, true} -> true;
        _ -> false
    end.

%% @doc 获取通用配置
get_sys_config(Key) ->
    get_sys_config(Key, undefined).

get_sys_config(Key, Default) ->
    case conf_sys_config:get(Key) of
        #{value := Value} ->
            Value;
        _ ->
            Default
    end.

%% @doc 获取字符串
get_string(Key) ->
    get_string(Key, <<"">>).

get_string(Key, Default) ->
    case conf_string:get(Key) of
        #{string := Str} ->
            Str;
        _ ->
            Default
    end.
