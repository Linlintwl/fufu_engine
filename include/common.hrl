%%-------------------------------------------------------
%% @File     : common.hrl
%% @Brief    : 公共定义
%% @Author   : Hofer_lu
%% @Date     : 2017-2-4
%%---------------------------------------------------------
%% 避免头文件多重包含
-ifndef(__COMMON_H__).
-define(__COMMON_H__, 0).

-include("log.hrl").

%% 服务器信息
-record(server_state, {
    name,
    value
}).

-define(DB, db).                                %% 数据库
-define(SUP, vtnemo_sup).                       %% 监督树根
-define(APP_NAME, vtnemo).                      %% 游戏名
-define(DEFAULT_PLATFORM, 1000).                %% 默认平台
-define(DEFAULT_SERVER_NUM, 0).                 %% 默认服
-define(DEFAULT_SERVER_NAME, "server_name").    %% 默认服
-define(DEFAULT_SERVER_IP, "127.0.0.1").        %% 默认ip
-define(DEFAULT_SERVER_PORT, 8001).             %% 默认端口

%% 服务器类型
-define(SERVER_TYPE_GAME, 1).       %% 游戏节点
-define(SERVER_TYPE_CENTER, 2).     %% 跨服中心
-define(SERVER_TYPE_CLUSTER, 3).    %% 跨服集群

%% 节点ID编号
-define(NODE_ID_GAME, 10).          %% 游戏逻辑节点
-define(NODE_ID_KFCENTER, 100).     %% 跨服中心节点
-define(NODE_ID_KFGROUP, 100).      %% 跨服分组节点
-define(NODE_ID_CLUSTER, 300).      %% 跨服集群节点


% 性别定义
-define(MALE, 1).       % 男
-define(FEMALE, 2).     % 女

%% 数字常量
-define(INT32_MAX, 4294967295).
-define(UINT32_MAX, 8589934591).
-define(UINT64_MAX, 36893488147419103231).
-define(DIFF_SECONDS_1970_1900, 2208988800).
-define(DIFF_SECONDS_0000_1900, 62167219200).
-define(ONE_DAY_SECONDS, 86400).                % 一天
-define(ONE_HOUR, 3600).                        % 一小时
-define(HALF_HOUR, 1800).                       % 半小时
-define(QUARTER_HOUR, 900).                     % 15分钟
-define(ONE_MINUTE, 60).                        % 一分钟
-define(HALF_MINUTE, 30).                       % 半分钟
-define(FIVE_SECONDS, 5).                       % 5秒钟

%% 场景初始化COPYID
-define(DEFAULT_SCENE, 10001).                  % 初始化场景
-define(DEFAULT_LINE, 1).                       % 初始化分线
-define(DEFAULT_POSX, 436).                     % 初始化X坐标
-define(DEFAULT_POSY, 80).                      % 初始化Y坐标

-define(REWARD_STATE_NOT, 0).
-define(REWARD_STATE_CAN, 1).
-define(REWARD_STATE_GOT, 2).

%% 三元表达式
-define(iif(A, B, C), (case A of true -> B; false -> C end)).

%% 数据类型转换
-define(l2i(List), list_to_integer(List)).
-define(i2l(Int), integer_to_list(Int)).

-define(l2f(List), list_to_float(List)).
-define(f2l(Float), float_to_list(Float)).

-define(l2a(List), list_to_atom(List)).
-define(a2l(Atom), atom_to_list(Atom)).

-define(l2b(List), list_to_binary(List)).
-define(b2l(Binary), binary_to_list(Binary)).

-define(l2bs(List), list_to_bitstring(List)).
-define(bs2l(BitString), bitstring_to_list(BitString)).

-define(l2p(List), list_to_pid(List)).
-define(p2l(Pid), pid_to_list(Pid)).

-define(l2t(List), erlang:list_to_tuple(List)).
-define(t2l(Tuple), erlang:tuple_to_list(Tuple)).

%% 断言
-define(ASSERT(Expression, Error),
    case (catch Expression) of
        true -> ok;
        _ -> erlang:throw(Error)
    end).

-define(MAKE_SURE(Exp),
    case Exp of
        {error, Code} -> erlang:throw({error, Code});
        Ret -> Ret
    end).

%% 字符串 or binary
-define(VALID_STR(Str), (is_binary(Str) orelse is_list(Str))).
-define(TR(Name), config:get_string(Name)).

%% Unicode String
-define(US(V), type:unicode_string(V)).
-define(UB(V), type:unicode_binary(V)).
-define(STR(V), type:term_to_string(V)).

-define(LOG(Log), svr_sys_log:log(Log)).
-define(LOG(M, F, A), svr_sys_log:log(M, F, A)).

%% 事件
-define(EVENT(RoleID, Msg), lib_role:info_role(RoleID, {event, Msg})).
-define(TASK_EVENT(RoleID, Msg), lib_role:mod_info(RoleID, lib_role_task, {fire, Msg})).

-define(TIMER_HALF_HOUR, half_hour).
-define(TIMER_DEFAULT, ?TIMER_HALF_HOUR).

%% =============================================================================
%% TRY_CATCH简化版
%% =============================================================================

%% 单个参数版本用法：
-define(TRY_CATCH(Expression),
    fun() ->
        try
            Expression
        catch
            _:ErrReason ->
                ?ERROR("Catch exception: Reason:~w, Stacktrace:~w", [ErrReason, erlang:get_stacktrace()])
        end
    end()).

-define(TRY_CATCH(Expression, Tip),
    fun() ->
        try
            Expression
        catch
            _:ErrReason ->
                ?ERROR("~s, Catch exception: Reason:~w, Stacktrace:~w", [Tip, ErrReason, erlang:get_stacktrace()])
        end
    end()).

-define(SHORT_CIRCUIT(Expression),
    fun() ->
        try
            Expression
        catch
            throw:Exception ->
                Exception;
            error:Reason ->
                erlang:error(Reason);
            _:Reason ->
                erlang:error(Reason)
        end
    end()).


%% =============================================================================
%% gen_server 辅助
%% =============================================================================
-define(DO_HANDLE_CALL(Request, From, State),
    try
        do_handle_call(Request, From, State)
    catch
        _:Reason ->
            ?ERROR("module ~w, line ~w, req ~w, from ~w, state ~w, reason ~w, stacktrace ~w",
                [?MODULE, ?LINE, Request, From, State, Reason, erlang:get_stacktrace()]),
            {reply, {error, 255}, State}
    end).

-define(DO_HANDLE_CAST(Request, State),
    try
        do_handle_cast(Request, State)
    catch
        _:Reason ->
            ?ERROR("module ~w, line ~w, req ~w, state ~w, reason ~w, stacktrace ~w",
                [?MODULE, ?LINE, Request, State, Reason, erlang:get_stacktrace()]),
            {noreply, State}
    end).

-define(DO_HANDLE_INFO(Request, State),
    try
        do_handle_info(Request, State)
    catch
        _:Reason ->
            ?ERROR("module ~w, line ~w, req ~w, state ~w, reason ~w, stacktrace ~w",
                [?MODULE, ?LINE, Request, State, Reason, erlang:get_stacktrace()]),
            {noreply, State}
    end).

-define(cast(Msg),
    case p() of
        Pid when is_pid(Pid) ->
            gen_server:cast(Pid, Msg);
        _ ->
            ignore
    end).

-define(cast(ID, Msg),
    case p(ID) of
        Pid when is_pid(Pid) ->
            gen_server:cast(Pid, Msg);
        _ ->
            ignore
    end).

-define(call(Msg),
    case p() of
        Pid when is_pid(Pid) ->
            gen_server:call(Pid, Msg);
        _ ->
            {error, 254}
    end).

-define(call(ID, Msg),
    case p(ID) of
        Pid when is_pid(Pid) ->
            gen_server:call(Pid, Msg);
        _ ->
            {error, 254}
    end).

-define(info(Msg),
    case p() of
        Pid when is_pid(Pid) ->
            Pid ! Msg;
        _ ->
            ignore
    end).

-define(info(ID, Msg),
    case p(ID) of
        Pid when is_pid(Pid) ->
            Pid ! Msg;
        _ ->
            ignore
    end).

-endif.  %% __COMMON_H__
