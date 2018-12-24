%%-------------------------------------------------------
%% @File     : svr_kf.erl
%% @Brief    : 跨服节点(100 300+)
%% @Author   : cablsbs
%% @Date     : 2018-9-19
%%-------------------------------------------------------
-module(svr_kf).

-behaviour(gen_server).

-include("common.hrl").
-include("cluster.hrl").
-include("ets_defines.hrl").

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


%% Apis -------------------------------------------------
start_link(NodeId) ->
    gen_server:start_link({local, ?MODULE}, ?MODULE, [NodeId], []).


%% Callbacks --------------------------------------------
init([NodeId]) ->
    erlang:process_flag(trap_exit, true),
    ok = init_ets(NodeId),                      % 初始 ets 表
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


%% Privates ---------------------------------------------
% @doc 初始ETS表 - 跨服中心节点
init_ets(?NODE_ID_KFCENTER) ->

    ok;
% @doc 初始ETS表 - 跨服逻辑节点
init_ets(_NodeId) ->

    ok.
