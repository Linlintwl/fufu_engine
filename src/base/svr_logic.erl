%%-------------------------------------------------------
%% @File     : svr_logic.erl
%% @Brief    : 游戏逻辑线服务
%% @Author   : shebiao
%% @Date     : 2015-1-6
%%-------------------------------------------------------
-module(svr_logic).

-include("role.hrl").
-include("common.hrl").
-include("cluster.hrl").
-include("ets_defines.hrl").

-behaviour(gen_server).

-export([
    start_link/1
]).

-export([
    init/1,
    handle_call/3,
    handle_cast/2,
    handle_info/2,
    terminate/2,
    code_change/3
]).


%% Apis ----------------------------------------------------------
start_link(NodeID) ->
    gen_server:start_link({local, ?MODULE}, ?MODULE, [NodeID], []).


%% Callbacks -----------------------------------------------------
init([_NodeID]) ->
    erlang:process_flag(trap_exit, true),
    %% 初始 ets 表
    ok = init_ets(),
    {ok, ?MODULE}.

handle_cast(_R, State) ->
    {noreply, State}.

handle_call(_R, _FROM, State) ->
    {reply, ok, State}.

handle_info(_Reason, State) ->
    {noreply, State}.

terminate(_Reason, State) ->
    {ok, State}.

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.


%% Privates ------------------------------------------------------
%% @doc 初始ETS表
init_ets() ->

    ok.
