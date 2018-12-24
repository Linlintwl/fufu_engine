-ifndef(__ROLE_H__).
-define(__ROLE_H__, 1).

-include("vip.hrl").
-include("assets.hrl").
-include("common.hrl").


%% 角色初始定义
-define(INIT_LEVEL, 1).             % 初始等级
-define(MAX_NAME_LENGTH, 13).       % 名字最大长度
-define(MAX_ACCOUNT_ROLE, 4).       % 账号角色数量上限

% 职业定义
-define(CAREER_GB, 1).              % 丐帮
-define(CAREER_XY, 2).              % 逍遥
-define(CAREER_WD, 3).              % 武当
-define(CAREER_TS, 4).              % 天山

% 状态
-define(STATE_NORMAL, 0).           % 正常
-define(STATE_BAN_IP, 1).           % ip封禁
-define(STATE_BAN_ROLE, 2).         % 角色封禁
-define(STATE_BAN_DEVICE, 3).       % 设备封禁
-define(STATE_BAN_PERMANENT, 9).    % 永久封禁

% 玩家ID
-define(ROLE_ID, get(role_id)).

% 角色特殊状态类型，用位来存放，暂定8位，最低位的优先级最高
-define(SPEC_STAT_DEFAULT, 0).          % 默认
-define(SPEC_STAT_BIT_SIT, 1).          % 练功打坐
-define(SPEC_STAT_BIT_JAIL, 2).         % 监禁
-define(SPEC_STAT_BIT_HANGING, 3).      % 离线（隐身）

%% 角色信息(未登录)
-record(role, {
    socket = undefined,         %% socket
    pid = undefined,            %% 角色进程
    login_flag = 0,             %% 是否登录
    accname = undefined,        %% 账户名
    timeout_total_num = 0,      %% 总超时次数
    cmd_total_num = 0,          %% 总请求次数
    cmd_list = [],              %% 请求列表
    cmd_last_time = 0,          %% 最后请求时间
    server_id = 0               %% 该角色的创角服
}).

%% 角色时间数据
-record(time_data, {
    last_upgrade_lv = 0,        %% 升级时间
    last_login = 0,             %% 登录时间
    last_logout = 0,            %% 登出时间
    total_online = 0,           %% 总在线时长
    login_days = 0,             %% 登陆天数
    first_recharge = 0          %% 首充时间
}).

%% 角色个性化数据
-define(ROLE_PERSONAL_VER, 2).      %% 形象数据版本号
-define(role_personal, #{
    ver => ?ROLE_PERSONAL_VER,      %% 数据版本号
    title => 0,                     %% 当前称号
    icon => 1,                      %% 当前头像
    hair => 0,                      %% 发型
    fashion => 0,                   %% 当前时装
    title_honor => 0                %% 头衔
}).

%% 角色场景数据
-define(ROLE_SCENE_VER, 2).         %% 场景数据版本号
-record(role_scene, {
    ver = ?ROLE_SCENE_VER,          %% 数据版本号
    scene_id = ?DEFAULT_SCENE,      %% 场景id
    line_id = ?DEFAULT_LINE,        %% 分线id
    line_pid = undefined,           %% 分线pid
    mode = 1,                       %% 默认和平模式
    unlock_change_mode = 0,         %% 解锁改模式时间
    x = ?DEFAULT_POSX,              %% x坐标
    y = ?DEFAULT_POSY,              %% y坐标
    old_scene = {},                 %% 传送前场景
    reset_index = 0                 %% 拉坐标次数
}).

%% 场景战斗数据转存(离线不保存)
-define(bt_data, #{
    bt_attr => undefined,           %% 战斗属性
    skill_cd => #{},                %% 技能cd
    effect_cd => #{},               %% 效果cd
    horse_stat => 0,                %% 外观坐骑状态
    declare_map => #{},             %% 宣战map
    rival_map => #{}                %% 仇敌map
}).

%% 角色信息(已登录)
-record(role_state, {
    id = 0,                         %% 玩家ID
    is_inited = false,              %% 是否初始化完毕
    accname = <<"">>,               %% 平台账号
    socket = 0,                     %% Socket
    pid = none,                     %% 玩家进程
    sid = none,                     %% 消息进程
    login_ip = {0, 0, 0, 0},        %% 登陆ip
    platform = 0,                   %% 游戏平台
    server_num = 0,                 %% 当前游戏服id
    server_id = 0,                  %% 注册游戏服id

    name = <<"">>,                  %% 玩家名
    career = 0,                     %% 职业
    gender = 0,                     %% 性别
    hp = 100,                       %% 血量
    mp = 100,                       %% 蓝量
    level = 1,                      %% 等级
    exp = 0,                        %% 经验
    murderous = 0,                  %% 杀气
    clr_mur_counter = 0,            %% 清除杀气counter(秒)
    sec_counter = 1,                %% 登陆时间计数

    guild_id = 0,                   %% 帮派id
    guild_name = <<"">>,            %% 榜排名
    guild_pos = 0,                  %% 帮派职位
    mate_id = 0,                    %% 伴侣ID
    team_id = 0,                    %% 队伍ID
    stat = 0,                       %% 角色特殊状态，用位来存放，1练功, 2监禁，3离线

    assets = ?role_assets,          %% 资产数据
    personal = ?role_personal,      %% 形象数据
    time_data = #time_data{},       %% 时间相关数据
    role_vip = ?role_vip,           %% vip相关数据
    role_scene = #role_scene{},     %% 场景数据
    scene_opt = [],                 %% 场景选项
    combat_power = 0,               %% 战力
    base_attr = undefined,          %% 基础属性
    bt_attr = undefined,            %% 战斗属性
    skill_list = [],                %% 技能列表
    effect_list = [],               %% 效果列表
    bt_data = ?bt_data              %% battle 转存 (不持久化)
}).

%% 在线信息
-record(role_online, {
    id = 0,                         %% 玩家ID
    pid = 0,                        %% 玩家进程ID
    sid = 0,                        %% 消息进程
    name = <<"">>,                  %% 玩家名
    level = 0,                      %% 等级
    guild_id = 0,                   %% 帮派ID
    scene = 0,                      %% 场景
    source = ""                     %% 渠道
}).

-endif.
