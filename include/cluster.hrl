%%-------------------------------------------------------
%% @File     : cluster.hrl
%% @Brief    : 跨服集群相关定义
%% @Author   : cablsbs
%% @Date     : 2018-9-28
%%-------------------------------------------------------

%% 避免头文件多重包含
-ifndef(__CLUSTER_H__).
-define(__CLUSTER_H__, 1).

%% 游戏节点记录
-record(node_info, {
    id = 0,                 % 节点id
    node = undefined,       % 节点名
    cookie = undefined,     % cookie
    ip = undefined,         % ip
    port = 0,               % 登陆端口(只有游戏服节点有用)
    time = 0                % 启动时间
}).

%% 游戏服信息
-record(svr_info, {
    svr_id = 0,             % 服id
    node = undefined,       % 节点名
    cookie = undefined,     % cookie
    ip = undefined,         % ip
    port = 0,               % 登陆端口
    name = ""               % 服名
}).

% 分组数据
-record(group_info, {
    act_id = 0,                 % 活动id
    group_id = 0,               % 分组id
    cluster_id = 0,             % 集群节点id
    server_ids = []             % 服务器id列表
}).


% 心跳间隔(2分钟)
-define(HEART_BEAT_INTERVAL, 120000).

-endif.
