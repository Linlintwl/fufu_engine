%%-------------------------------------------------------
%% @File     : scene.hrl
%% @Brief    : 场景对象头文件
%% @Author   : cablsbs
%% @Date     : 2016-6-21
%%-------------------------------------------------------

%% 避免头文件多重包含
-ifndef(__SCENE_OBJS_H__).
-define(__SCENE_OBJS_H__, 0).

%%-include("proto/prot_ud.hrl").
%%-include("statem.hrl").

%% 采集物类型
-define(COLL_SHARING, 1).           % 共享采集
-define(COLL_MONOPOLY, 2).          % 独占采集
-define(COLL_TERRITORY, 3).         % 领地采集

%% 飞行道具类型
-define(FLYITEM_DEFAULT, 1).        % 默认类型
-define(FLYITEM_CAGE, 2).           % 牢笼类型

%% 采集操作
-define(COLL_OP_START, 1).          % 开始采集
-define(COLL_OP_STOP, 2).           % 结束采集


%% 怪物数据
-record(mon, {
    id = 0,                         % 怪物唯一ID(场景内唯一)
    mid = 0,                        % 怪物配置id
    name = <<>>,                    % 怪物名称
    kind = 0,                       % 怪物类型:0怪物,1采集物品,4论剑江湖伙伴人形怪,9不会攻击的怪物(如论剑宝箱)
    type = 0,                       % 怪物战斗类型(0被动|1主动)
    boss = 0,                       % boss类型 0:普通怪 其他:boss
    level = 1,                      % 怪物等级

    owner = #{},                    % 拥有玩家者信息 #{id => Id, name => Name, team => Team}
    realm = 0,                      % 怪物阵营
    x = 0,                          % X坐标
    y = 0,                          % Y坐标
    born_xy = {0, 0},               % 出生xy坐标
    float_xy = {0, 0},              % 临时XY(浮点值)
    to_xy = {0, 0},                 % 目标xy
    last_xy = {0, 0},               % 上次状态xy(用来做定点巡逻，追击返回)
    gradient = {0, 0},              % 移动斜率
    move_type = 0,                  % 移动类型

    att_type = 0,                   % 攻击类型
    att_area = 0,                   % 攻击范围
    sight_area = 0,                 % 视野范围
    trace_area = 0,                 % 追踪范围
    attackable = 1,                 % 是否可攻击
    revive = 0,                     % 复活时间(单位毫秒)
    args = [],                      % 默认参数配置，由地图编辑器编的怪可以受这个参数影响；手动生成的怪还可以继续传参数到生成方法中
    drop = 0,                       % 掉落Id
    ai_group = 0,                   % AI分组
    ai_triggers = [],               % AI触发行为列表
    ai_cd = #{},                    % AI行为cd
    ai_data = #{},                  % AI数据 Keys:
                                    %   parent => {ActionId, ParentId}      children => [{ActionId, ChildrenIds}]
                                    %   trace_expire => integer()  trace_type => integer()  trace_args => [term()]  unlock_target => integer()

    hp = 0,                         % 当前血量
    combat_power = 0,               % 怪物战力
%%    attr = #bt_attr{},              % 战斗属性
%%    bt_attr = #bt_attr{},           % 战斗属性(附加buff)
    skill_list = [],                % 技能，[{skill_id, lv, percent}]
    skill_cd = #{},                 % 技能cd状态
    skill_next = [],                % 下次释放技能
    effect_list = [],               % [#effect{}]
    effect_cd = #{},                % #{EffectId => NextValidTime}
    pre_skill = none,               % 蓄力技能信息
    shield = undefined,             % 护盾 undefined | {ShieldId, ShieldVal, ShieldCureRatio}
    target = undefined,             % 当前攻击目标 {ObjType, ObjId}
%%    statem = #statem{},             % 怪物状态数据
    exp = 0,                        % 击杀增加玩家经验

    born_time = 0,                  % 出生时间(毫秒)
    die_time = 0,                   % 死亡时间戳(毫秒)
    last_attack = 0,                % 上次攻击时间(毫秒)
    last_beatt_time = 0,            % 上次被攻击时间(毫秒)
    update_counter = 0,             % 更新计数器
    killer = undefined,             % 击杀者 {Type, Id}
    harm_map = #{},                 % 所受伤害map #{AttKey => Harm}
    functional_data = #{},          % 怪物的通用字段，可以各功能存放自己需要的数据 格式如：#{Key => Value},自己定义
                                    % Keys: first_att => integer(), parent => integer(), children => [integer()]
    path = []                       % 自动行走路径
}).


%% 场景用户数据
%% 只保留场景所需的信息
-record(scene_role, {
    id = 0,                         % 用户ID
    sid = undefined,                % 角色发送消息进程
    pid = 0,                        % 角色进程
    name = [],                      % 角色名
    career = 0,                     % 职业
    gender = 0,                     % 性别
    level = 1,                      % 等级
    combat_power = 0,               % 战力

    owner = #{},                    % 拥有玩家者信息(机器人的归属者数据) #{sid => Sid}
    x = 0,                          % X坐标
    y = 0,                          % Y坐标
    float_xy = {0, 0},              % 临时XY(浮点值)
    to_xy = {0, 0},                 % 目标xy
    gradient = {0, 0},              % 移动斜率
    move_type = 0,                  % 移动类型
    reset_index = 0,                % 拉坐标次数
%%    statem = #statem{},             % 状态机数据
    update_counter = 0,             % update 次数(用来做定时操作，并不特别精确)
    revive_type = 2,                % 复活类型(默认出生点复活, 每次复活后，重置为出生点复活)

    hp = 0,                         % 血量
    mp = 0,                         % 蓝量
    gm_rate = 1,                    % gm属性倍率
    pet_addon = [],                 % 珍兽提供的基础属性
%%    attr = #bt_attr{},              % 战斗属性
%%    bt_attr = #bt_attr{},           % 战斗属性(附加buff)
    peffect_attr = #{},             % 被动技能属性加成
    pre_skill = none,               % 蓄力技能信息
    skill_list = [],                % 技能列表
    mod_pskills = [],               % 模块被动辅助技能列表
    skill_confs = [],               % 技能配置列表
    skill_cd = #{},                 % 技能CD
    peffect_map = #{},              % passive_skill effects #{ Mod => [ #effect{} ] }
    effect_list = [],               % [#effect{}]
    effect_cd = #{},                % #{ EffectId => NextValidTime }
    shield = undefined,             % 护盾 undefined | {ShieldId, ShieldVal, ShieldCureRatio}
    collecting = 0,                 % 正在采集数据 {Id, boolean()} | 0

    % 战斗过滤数据 -----------------------
    server_num = 0,                 % 主服id
    mode = 1,                       % 默认和平
    realm = 0,                      % 阵营
    team = 0,                       % 队伍
    guild = 0,                      % 帮派
    guild_name = <<>>,              % 帮派名
    declare_map = #{},              % 宣战map #{RoleId => DeclareTime}
    rival_map = #{},                % 仇敌map #{RoleId => BeAttTime}
    murderous = 0,                  % 杀气值
    attackable = sets:new(),        % 可攻击角色id sets

    %% 功能、模块数据 --------------------
    hair = 0,                       % 发型
    icon = 0,                       % 头像
    title = 0,                      % 称号
    fashion = 0,                    % 当前时装
    in_poison = 0,                  % 演武堂专用(0表示不在毒圈|1在毒圈)
    exteriors = [],                 % 外观 [{Type, UseID, IsShow}]
    stat = 0,                       % 角色特殊状态，0默认，1练功
    title_honor = 0,                % 头衔
    last_attack = 0,                % 上次发动攻击时间
    last_exp_time = 0,              % 上次练功获取到经验的时间戳(ms)
    psdh_skill_his = []             % 排山倒海技能历史记录(用于计算蓝量消耗)
}).

%% 宠物数据
-record(pet, {
    id = 0,                         % 唯一ID(场景内唯一)
    pet_cid = 0,                    % 珍兽配置id
    atk_type = 0,                   % 攻击类型
    title = <<>>,                   % 珍兽称号(九转超神兽类)
    name = <<>>,                    % 珍兽名称
    level = 1,                      % 珍兽等级

    owner = #{},                    % 拥有玩家者信息 #{Key => Value}
                                    % #{id => Id, sid => Sid, name => Name,
                                    %   mode => Mode, guild => Guild, team => Team, realm => Realm,
                                    %   attackable => Attackable}
    x = 0,                          % X坐标
    y = 0,                          % Y坐标
    born_xy = {0, 0},               % 出生xy坐标
    float_xy = {0, 0},              % 临时XY(浮点值)
    to_xy = {0, 0},                 % 目标xy
    gradient = {0, 0},              % 移动斜率
    move_type = 0,                  % 移动类型
    reset_index = 0,                % 拉坐标次数

    hp = 0,                         % 当前血量
    combat_power = 0,               % 珍兽战力
    base_attr = [],                 % 基础属性(给角色加成)
%%    attr = #bt_attr{},              % 战斗属性
%%    bt_attr = #bt_attr{},           % 战斗属性(附加buff)
    peffect_attr = #{},             % 被动技能属性加成
    pre_skill = none,               % 蓄力技能信息
    skill_list = [],                % 技能，[{skill_id, lv, percent, Dist}]
    skill_cd = #{},                 % 技能cd状态
    pskill_list = [],               % 被动技能，[{skill_id, lv, percent}]
    peffect_map = #{},              % passive_skill effects #{ Mod => [ #effect{} ] }
    effect_list = [],               % [#effect{}]
    effect_cd = #{},                % #{EffectId => NextValidTime}
    shield = undefined,             % 护盾 undefined | {ShieldId, ShieldVal, ShieldCureRatio}
%%    statem = #statem{},             % 珍兽状态数据

    die_time = 0,                   % 死亡时间戳(毫秒)
    update_counter = 0              % 更新计数器
}).

%% 采集物
-record(coll, {
    id = 0,                         % 唯一ID(场景内唯一)
    type = 0,                       % 采集物类型 (1:独占 2:共享)
    cid = 0,                        % 采集物配置id
    name = <<>>,                    % 采集物名称
    duration = 0,                   % 采集时间
    interruptable = false,          % 打断类型 默认不可被打断
    disappear = true,               % 采集后是否消失
    realm = 0,

    x = 0,                          % X坐标
    y = 0,                          % Y坐标
    owner = #{},                    % 拥有者(只有拥有者可见) #{id => OwnerId}
    belonger = #{},                 % 归属者(占有这个采集物的人)
    collectors = []                % [{采集者, 开始采集时间}]
%%    statem = #statem{}              % 状态机数据
}).

%% 镖车
-record(carry, {
    id = 0,                         % 唯一ID(场景内唯一)
    cid = 0,                        % 镖车配置id
    speed = 0,                      % 镖车速度
    x = 0,                          % X坐标
    y = 0,                          % Y坐标
    float_xy = {0, 0},              % 临时XY(浮点值)
    to_xy = {0, 0},                 % 目标xy
    gradient = {0, 0},              % 移动斜率
    path = [],                      % 路径
    path_index = 1,                 % 当前路径索引
    move_type = 0,                  % 移动类型
    owner = #{},                    % 拥有者 #{id => OwnerId, name => Name, guild_id => GuildId, guild_name => GuildName}
    update_counter = 0,             % 更新计数器
    updated = true,                 % 更新状态
    expire_time = 0                % 过期时间
%%    statem = #statem{}              % 状态机数据
}).

%% 飞行道具
-record(flyitem, {
    id = 0,                         % 唯一ID(场景内唯一)
    cid = 0,                        % 飞行道具配置id
    type = 0,                       % 飞行道具类型 1:默认  2:牢笼
    radii = 0,                      % 飞行道具半径 (牢笼型生效)
    speed = 0,                      % 飞行道具速度
    x = 0,                          % X坐标
    y = 0,                          % Y坐标
    float_xy = {0, 0},              % 临时XY(浮点值)
    to_xy = {0, 0},                 % 目标xy
    gradient = {0, 0},              % 移动斜率
    move_type = 0,                  % 移动类型
    owner = #{},                    % 拥有者 #{id => OwnerId, type => OwnerType}
    skill_lv = 0,                   % 技能等级
    tick_gap = 0,                   % 触发周期
    tick_act = undefined,           % 触发行为
    next_tick = 0,                  % 下次触发
    expire_time = 0,                % 过期时间
    in_cage = undefined            % 牢笼内的对象 undefined | sets()
%%    statem = #statem{}              % 状态机数据
}).



-endif.
