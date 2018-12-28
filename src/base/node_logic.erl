%%% ----------------------------------------------------------------------------
%%% @author Ryuu
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%     node_logic
%%% @end
%%% ----------------------------------------------------------------------------
-module(node_logic).
-author("Ryuu").

-include("common.hrl").

%% API
-export([
    stop/0,
    start/1
]).


%% @doc
start([NodeId]) ->
    set_game_env(),
    Ip = config:get_server_ip(),
    Port = config:get_server_port(),
    start_services(Ip, Port, NodeId),
    svr_node:start_heart_beat(),
    ok;
start(_) ->
    ok.

start_services(IPStr, Port, NodeID) ->
    ?INFO("start_services, ~s,~w,~w~n", [IPStr, Port, NodeID]),
    {ok, _} = supervisor:start_child(?SUP,
        {svr_logic, {svr_logic, start_link, [NodeID]},
            permanent, 10000, worker, [svr_logic]}),
    {ok, _} = supervisor:start_child(?SUP,
        {svr_node, {svr_node, start_link, [[IPStr, Port, NodeID]]},
            permanent, 10000, worker, [svr_node]}),
    ok.

%% @doc
stop() ->
    ?INFO("step 1: kickoff all players"),

    ?INFO("step 2: permanent modules"),

    ?INFO("step 3: all done"),
    ok.

set_game_env() ->
    case ?DB:get_all("SELECT `cf_name`, `cf_value` FROM `base_game` WHERE `cf_name` IN ('sid', 'ip', 'port')") of
        SvrConfs when length(SvrConfs) =:= 3 ->
            do_set_game_env(SvrConfs);
        _ ->
            throw(set_server_num_failed)
    end.

do_set_game_env([[<<"sid">>, RawSvrNum] | Rest]) ->
    SvrNum = type:bitstring_to_term(RawSvrNum),
    application:set_env(?APP_NAME, server_num, SvrNum),
    do_set_game_env(Rest);
do_set_game_env([[<<"ip">>, RawIp] | Rest]) ->
    IpStr = bitstring_to_list(RawIp),
    application:set_env(?APP_NAME, server_ip, IpStr),
    do_set_game_env(Rest);
do_set_game_env([[<<"port">>, RawPort] | Rest]) ->
    Port = type:bitstring_to_term(RawPort),
    application:set_env(?APP_NAME, server_port, Port),
    do_set_game_env(Rest);
do_set_game_env([]) ->
    ok.
