%%-------------------------------------------------------
%% @File     : ets_defines.hrl
%% @Brief    : ets定义
%% @Author   : cablsbs
%% @Date     : 2018-6-14
%%---------------------------------------------------------
%% 避免头文件多重包含
-ifndef(__ETS_DEFINES_H__).
-define(__ETS_DEFINES_H__, 1).

%% ets表选项
-define(ETS_DEFAULT_OPTIONS, [set, public, named_table, {read_concurrency, true}]).
-define(ETS_PROTECTED_OPTIONS, [set, protected, named_table, {read_concurrency, true}]).
-define(ETS_KEYPOS_OPTIONS(KeyPos), [set, public, named_table, {keypos, KeyPos}, {read_concurrency, true}]).

-define(ETS_CURRENCY_OPTIONS, [set, public, named_table, {read_concurrency, true}, {write_concurrency, true}]).
-define(ETS_KEY_CURRENCY(KeyPos), [set, public, named_table, {keypos, KeyPos}, {read_concurrency, true}, {write_concurrency, true}]).

%% 表名定义
-define(ETS_NODE, ets_node).                    %% 节点列表
-define(ETS_SVR_INFO, ets_svr_info).            %% 已连接跨服中心的服务器信息
-define(ETS_ONLINE, ets_online).                %% 在线数据
-define(ETS_SERVER_STATE, ets_server_state).    %% 服务器信息

%% 聊天关键词
-define(ETS_SENSITIVE_TALK, ets_game_sensitive_words_talk).
-define(ETS_SENSITIVE_TALK_PASS_1, ets_game_sensitive_words_talk_pass_1).
-define(ETS_SENSITIVE_TALK_PASS_2, ets_game_sensitive_words_talk_pass_2).
-define(ETS_SENSITIVE_TALK_PASS_3, ets_game_sensitive_words_talk_pass_3).
-define(ETS_SENSITIVE_NAME, ets_game_sensitive_words_name).
-define(ETS_SENSITIVE_WORD_GROUP, ets_sensitive_word_group).

%% 场景相关ets表
-define(ETS_SCENE_MGR, ets_scene_mgr).                      % 场景管理信息ETS表
-define(ETS_CLUSTER_SCENE_MGR, ets_cluster_scene_mgr).      % 跨服场景管理信息ETS表
-define(ETS_CLUSTER_SCENE_AGENT, ets_cluster_scene_agent).  % 跨服场景管理信息ETS表

%% 排行榜
-define(ETS_RANK, ets_rank). %% 排行榜ets

%% 缓存
-define(ETS_CACHE, ets_cache).

%% 聊天
-define(ETS_CHAT_CACHE_PUBLIC, ets_chat_cache_public).
-define(ETS_CHAT_CACHE_PRIVATE, ets_chat_cache_private).

%% 好友
-define(ETS_FRIEND, ets_friend).

%% 夺宝奇兵
-define(ETS_RAIDER_BOSS, ets_raider_boss).

%% 玩家帮派ETS
-define(ETS_GUILD, ets_guild).
-define(ETS_GUILD_UPDATE, ets_guild_update).
-define(ETS_GUILD_ROLE, ets_guild_role).
-define(ETS_GUILD_ROLE_UPDATE, ets_guild_role_update).
-define(ETS_GUILD_OTHERS, ets_guild_others).

%% 结婚
-define(ETS_MARRIAGE, ets_marriage).
-define(ETS_MARRIAGE_U, ets_marriage_u).
-define(ETS_MARRIAGE_ROLE, ets_marriage_role).
-define(ETS_MARRIAGE_ROLE_U, ets_marriage_role_u).

%% 活动
-define(ETS_ACTIVITY, ets_activity).
-define(ETS_OPERATION_ACTIVITY, ets_operation_activity).

%% 机器人
-define(ETS_ROBOT, ets_robot).

%% 行酒令
-define(ETS_GUILD_QUESTION, ets_guild_question).

%% 拍卖行
-define(ETS_AUCTION, ets_auction).
-define(ETS_AUCTION_U, ets_auction_u).
-define(ETS_AUCTION_LOG, ets_auction_log).

%% 掷骰子
-define(ETS_DICE, ets_dice).

%% 门派竞技
-define(ETS_CAREER_BATTLE, ets_career_battle).
-define(ETS_CAREER_BATTLE_U, ets_career_battle_u).

%% 组队
-define(ETS_TEAM, ets_team).
-define(ETS_TEAM_MEMBER, ets_team_member).
-define(ETS_TEAM_APPLY_INVITE, ets_team_apply_invite).

%% 领地战
-define(ETS_TERRITORY, ets_territory).
-define(ETS_TERRITORY_BATTLE, ets_territory_battle).

%% 商会
-define(ETS_MARKET, ets_market).
-define(ETS_MARKET_ITEM, ets_market_item).
-define(ETS_MARKET_ITEM_U, ets_market_item_u).
-define(ETS_MARKET_ROLE, ets_market_role).
-define(ETS_MARKET_ROLE_U, ets_market_role_u).

-endif.
