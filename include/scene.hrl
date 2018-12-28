%%-------------------------------------------------------
%% @File     : scene.hrl
%% @Brief    : 场景头文件
%% @Author   : cablsbs
%% @Date     : 2016-6-21
%%-------------------------------------------------------
%% 避免头文件多重包含
-ifndef(__SCENE_H__).
-define(__SCENE_H__, 0).

-include("scene_objs.hrl").

% 场景进程内，取当前场景id
-define(SCENE_ID, get(scene_id)).       % 当前场景id
-define(LINE_ID, get(line_id)).         % 当前分线id
-define(SCENE_TYPE, get(scene_type)).   % 当前场景类型

%% 场景处理帧定义
-define(CMDS_INTERVAL, 100).            % 协议帧
-define(UPDATE_INTERVAL, 200).          % 更新帧
-define(SCENE_DROP_INTERVAL, 5000).     % 场景掉落间隔

%% 场景算法相关定义
-define(MAP_GRID, 25).                  % 广播单元边长
-define(ASTAR_SEARCH_DEPTH, 30).        % A*算法搜索深度

%% 场景对象id范围
-define(MAX_ROBOT_ID,   10000).         % 机器人对象最大id    范围:         1 ~ 10000
-define(MIN_CARRY_ID,   10001).         % 镖车对象最小id      范围:     10001 ~ 200000
-define(MIN_PET_ID,     200001).        % 宠物对象最小id      范围:    200001 ~ 3000000
-define(MIN_COLL_ID,    3000001).       % 采集物对象最小id    范围:   3000001 ~ 40000000
-define(MIN_MON_ID,     40000001).      % 怪物对象最小id      范围:  40000001 ~ 500000000
-define(MIN_FLYITEM_ID, 500000001).     % 飞行道具对象最小id  范围: 500000001 ~ BigEnough

%%% 常用判断
%% 位置范围
-define(WITHIN_AREA(X, Y, MinX, MinY, MaxX, MaxY), (X >= MinX andalso X =< MaxX andalso Y >= MinY andalso Y =< MaxY)).
%% 归属者
-define(MATCH_OWNER(AOwnerId, DOwnerId), (AOwnerId =:= 0 orelse DOwnerId =:= 0 orelse AOwnerId =:= DOwnerId)).
%% 阵营
-define(MATCH_REALM(ARealm, DRealm), (ARealm =/= DRealm orelse ARealm =:= 0)).
%% 队伍
-define(MATCH_TEAM(ATeam, DTeam), (ATeam =/= DTeam orelse ARealm =:= 0)).

%% 9宫格范围
-define(TABLE_AREA(ObjType, Id), {ObjType, Id}).

% 模式定义
-define(MODE_PEACE, 1).             % 和平
-define(MODE_GUILD, 2).             % 帮派
% -define(MODE_KILL, 3).              % 全体
-define(MODE_TEAM, 4).              % 组队
-define(MODE_SERVER, 5).            % 本服
-define(MODE_REALM, 6).             % 阵营
-define(MODE_JUSTICE, 7).           % 正义模式
-define(ALL_MODE, [1,2,4,5,6,7]).   % 模式列表


%% MoveType定义
-define(MT_WALK, 0).        % 走路
-define(MT_JUMP, 1).        % 跳跃
% -define(MT_CJUMP, 2).       % 二段跳
% -define(MT_SJUMP, 3).       % 特殊跳跃
% -define(MT_RUSH, 4).        % 冲刺
-define(MT_TRANSFER, 5).    % 传送(宠物特别使用)
% -define(MT_JPOINT, 6).      % 跳跃点
-define(MT_STOP, 7).        % 停止

%% 场景限制类型定义
-define(LEVEL_LMT, 1).              % 等级限制

%% 场景分线相关定义
-define(DEFAULT_DUNGEON_LINES, 3).  % 副本类场景默认分线数量
-define(NEW_SCENE_NUM_LIST, []).    % 新手场景列表 [{SceneId, LineNum}]

%% 场景ID
-define(SCENE_ID_JAIL, 11000).          %% 监狱场景
-define(SCENE_ID_ARENA, 20001).         %% 竞技场
-define(SCENE_ID_MASTER_CHAP, 40003).   %% 武林盟主挑战
-define(SCENE_ID_MASTER_ROB, 40004).    %% 武林盟主掠夺

%%% 场景类型定义
% 本服场景类型
-define(SCENE_NORMAL, 1).                   % 主城场景
-define(SCENE_OUTSIDE, 2).                  % 野外场景
-define(SCENE_DUNGEON, 3).                  % 副本场景
-define(SCENE_TASK_PASS, 4).                % 主线关卡
-define(SCENE_ACTIVITY, 5).                 % 活动场景
-define(SCENE_ARENA, 6).                    % 竞技场场景
-define(SCENE_GUILD, 7).                    % 帮派场景
-define(SCENE_HANGING, 8).                  % 挂机场景
-define(SCENE_HANGING_TOMB, 9).             % 古墓挂机场景

% 跨服场景类型
-define(SCENE_CLUSTER_BOUNDARY, 100).       % 跨服场景类型分界线
-define(SCENE_CLUSTER_NORMAL, 101).         % 跨服普通场景
-define(SCENE_CLUSTER_OUTSIDE, 102).        % 跨服野外场景
-define(SCENE_CLUSTER_ACTIVITY, 105).       % 跨服活动场景


-define(RESET_SCENE_TYPES, [        % 重登返回主城的场景类型列表
    ?SCENE_DUNGEON, ?SCENE_ACTIVITY, ?SCENE_ARENA, ?SCENE_GUILD
]).

-define(NOT_AUTO_RECYCLE_SCENE, [   % 非自动回收场景
    ?SCENE_ACTIVITY, ?SCENE_GUILD, ?SCENE_CLUSTER_ACTIVITY
]).

-define(NORMAL_SCENE_TYPES, [       % 常规场景
    ?SCENE_NORMAL, ?SCENE_OUTSIDE, ?SCENE_TASK_PASS
]).

-define(NEED_INIT_SCENE_TYPES, [    % 创建需要初始化场景
    ?SCENE_NORMAL, ?SCENE_OUTSIDE, ?SCENE_CLUSTER_NORMAL,
    ?SCENE_CLUSTER_OUTSIDE, ?SCENE_GUILD
]).

-define(MONOPOLY_SCENE_TYPES, [     % 独占场景
    ?SCENE_DUNGEON, ?SCENE_ARENA
]).

-define(SAFE_SCENE_TYPES, [     % 和平场景
    ?SCENE_NORMAL, ?SCENE_GUILD, ?SCENE_HANGING_TOMB
]).

-define(ADD_EXPLOIT_SCENE_TYPES, [    % 可增加帮派战绩场景
    ?SCENE_OUTSIDE, ?SCENE_HANGING_TOMB
]).

%% 需要全场景广播的场景
-define(ALL_SCENE_BRO, [?SCENE_DUNGEON]).
-define(ALL_SCENE_BRO_ID, []).

%% 需要广播的特殊场景
-define(BROADCAST_SCENE_LIST, []).

%% 是否允许切模式
-define(CAN_SWITCH_MODE, 0).        % 允许切战斗模式
-define(NOT_SWITCH_MODE, 1).        % 不允许切战斗模式

%% 杀气类型位定义
-define(IS_ADD_MURDEROUS, 1).       % 是否加杀气
-define(IS_CLR_MURDEROUS, 2).       % 是否清杀气
-define(IS_ADD_RIVAL, 3).           % 是否反击


%% 宠物出生位置偏移
-define(PET_BORN_OFFSET, 5).        % 宠物出生位置最大偏移



%% 场景ETS 数据
-record(ets_scene, {
    scene_id = 0,               % 场景id
    scene_type = 0,             % 场景类型(副本场景特殊处理)
    auto_line_id = 1,           % 分线自增id
    line_pids = #{},            % 分线进程map
    distribute = [],            % 分线人数([{LineId, RoleNum},...])
    role_lmt = 0,               % 场景人数限制
    role_lmt_s = 1              % 场景宽容人数(小于这个人数的分线直接使用)
}).

%% 跨服场景ETS 数据
-record(ets_cluster_scene, {
    scene_id = 0,               % 场景id
    scene_type = 0,             % 场景类型(副本场景特殊处理)
    role_lmt = 0,               % 人数上限
    role_lmt_soft = 0,          % 人数上限(增开场景)
    line_info = #{},            % 分线信息 #{ LineId => {Pid, ClusterId}}
    svr_line = #{}              % 分线进程 #{ ServerId => LineIds }
}).

%% 跨服场景ETS 数据
-record(ets_scene_line, {
    scene_id = 0,               % 场景id
    scene_type = 0,             % 场景类型(副本场景特殊处理)
    role_lmt = 0,               % 场景人数限制
    line_pids = #{},            % #{ LineId => Pid }
    line_roles = #{}            % #{ LineId => RoleNum }
}).

%% 场景数据结构
-record(scene, {
    id = 0,                     % 场景ID
    line = 1,                   % 线编号
    name = <<>>,                % 场景名称
    type = 0,                   % 场景类型
    role_lmt = 0,               % 场景人数限制
    enter_lmt = [],             % 进入限制
    x = 0,                      % 默认开始点
    y = 0,                      % 默认开始点
    mask_id = 0,                % 地图mask
    width = 0,                  % 宽度
    height = 0,                 % 高度
    mode = [],                  % 模式限制
    elem = [],                  % 地图元素
    npc = [],                   % NPC列表
    mon = [],                   % 怪物列表
    coll = [],                  % 采集物列表
    jump = [],                  % 跳跃点
    door = [],                  % 传送阵 [{JumpId, X, Y, {SceneId, X, Y}}]
    update_counter = 0,         % 更新计数器(场景统一)
    last_update_time = 0,       % 上次处理更新时间
    update_timer_ref = none,    % 更新定时器
    last_cmd_time = 0,          % 上次处理命令时间
    cmd_timer_ref = none,       % 命令定时器
    clear_effects = [],         % 离开场景清除效果
    switch_mode_lmt = 0,        % 场景切换战斗模式限制 0:可以 1:不可以
    murderous_type = 0          % 杀气类型 0:默认  1:不加杀气  2:自动清除
}).

%% A* 算法节点
-record(astar_node, {
    xy = {},
    pxy = {},
    gvalue = 0,
    hvalue = 0
}).

-endif.
