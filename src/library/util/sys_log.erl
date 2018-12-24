%%-------------------------------------------------------
%% @File     : sys_log
%% @Brief    : 日志记录模块
%% @Author   : cablsbs
%% @Date     : 2018-6-12
%%-------------------------------------------------------
-module(sys_log).

-include("common.hrl").
-include("sys_log.hrl").

-export([
    log_login/5,
    log_logout/6,
    log_combat_power/5,
    log_level_op/2
]).


%%% Apis ------------------------------------------------
%% @doc 登录日志
log_login(RoleId, Career, Level, Ip, NowTime) ->
    SQL = io_lib:format(?SQL_LOG_LOGIN, [RoleId, Career, Level, type:ip2str(Ip), NowTime]),
    ?LOG(SQL).

%% @doc 退出日志
log_logout(RoleId, Career, Level, Ip, LoginTime, NowTime) ->
    SQL = io_lib:format(?SQL_LOG_LOGOUT, [RoleId, Career, Level, type:ip2str(Ip), LoginTime, NowTime]),
    ?LOG(SQL).

%% @doc 战力日志
log_combat_power(RoleId, OriPower, Power, Time, IsLower) ->
    SQL = io_lib:format(?SQL_COMBAT_POWER, [RoleId, OriPower, Power, Time, IsLower]),
    ?LOG(SQL).

log_level_op(RoleID, Log) ->
    Now = time:unixtime(),
    #{old_level := OldLv, old_exp := OldExp, amount := Amount,
        new_level := NewLv, new_exp := NewExp, opt := OpType} = Log,
    SQL = io_lib:format(?SQL_LOG_ROLE_LV, [RoleID, OldLv, OldExp, Amount, NewLv, NewExp, OpType, Now]),
    ?LOG(SQL).

%%% Privates --------------------------------------------
