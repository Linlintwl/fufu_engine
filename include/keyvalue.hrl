%%-------------------------------------------------------
%% @File     : keyvalue.hrl
%% @Brief    : 键值定义
%% @Author   : cablsbs
%% @Date     : 2018-8-9
%%---------------------------------------------------------
%% 避免头文件多重包含
-ifndef(__KEYVALUE_H__).
-define(__KEYVALUE_H__, 0).

% 每日键值(玩家) 1~1000
-define(KEY_DAILY_KILL_MON_COUNTER, 1).             %% 每日杀怪计数
-define(KEY_DAILY_KILL_MON_REWARD_ST, 2).           %% 每日杀怪奖励状态
-define(KEY_DAILY_RECHARGE, 3).                     %% 每日充值元宝
-define(KEY_DAILY_RECHARGE_MONEY, 4).               %% 每日充值金额
-define(KEY_DAILY_WELFARE, 5).                      %% 天龙福利
-define(KEY_DAILY_CARRY, 6).                        %% 接镖次数
-define(KEY_DAILY_CARRY_ROB, 7).                    %% 劫镖次数
-define(KEY_DAILY_CARRY_REFRESH, 8).                %% 刷镖次数
-define(KEY_DAILY_GUILD_PRACTICE_TIMES, 9).         %% 每日累计帮派练功收益次数
-define(KEY_DAILY_DAILY_THIEF_EXP, 10).             %% 马贼经验
-define(KEY_DAILY_DAILY_THIEF_RORATY, 11).          %% 马贼奇遇
-define(KEY_DAILY_GUILD_TASK_TIMES, 12).            %% 帮派任务次数
-define(KEY_DAILY_DYNASTY_ENTER_TIMES, 13).         %% 宋辽进入次数
-define(KEY_DAILY_JOUSTS_HALL_ENTER_TIMES, 14).     %% 演武堂进入次数
-define(KEY_DAILY_GUILD_DEFEND_ENTER_TIMES, 15).    %% 帮派守卫战进入次数
-define(KEY_DAILY_CAREER_BATTLE_ENTER_TIMES, 16).   %% 门派竞技战进入次数
-define(KEY_DAILY_LAST_LOGOUT_ONLINE_TIME, 17).     %% 上次下线时今日在线时长
-define(KEY_DAILY_TASK_TIMES, 18).                  %% 每日任务完成次数
-define(KEY_DAILY_GUILD_METALL_TIMES, 19).          %% 帮派炼金小金矿完成次数

%% 键值(玩家) 2001~3000
-define(KEY_TOTAL_RECHARGE, 2001).                  %% 累计充值元宝
-define(KEY_RECHARGED_PRODUCTS, 2002).              %% 已充值档次数据({list(), list()})
-define(KEY_LEVEL_GIFT, 2003).                      %% 等级礼包
-define(KEY_CHANNEL_DRAW, 2004).                    %% 经脉夺宝
-define(KEY_SMELT, 2005).                           %% 熔炼
-define(KEY_EXTERIOR_HORSE, 2006).                  %% 外观-坐骑
-define(KEY_EXTERIOR_HORSE_CHOOSE, 2007).           %% 外观-坐骑选择
-define(KEY_INTRODUCTION, 2008).                    %% 个人说明
-define(KEY_EXH_BOX_WEEK_LIMIT, 2009).              %% 兑换历练宝箱每周的次数限制
-define(KEY_CHARGE_GIFT_GOT, 2010).                 %% 已领取充值礼包列表
-define(KEY_FIRST_CHARGE_FLAG, 2011).               %% 首次充值及奖励领取标识
-define(KEY_FRIEND_BLOCK_INDEX, 2012).              %% 好友分组自增索引
-define(KEY_TOTAL_RMB, 2013).                       %% 累计充值RMB

% 键值(玩家可修改，用于存玩家设置) 4001~5000
-define(KEY_SETTABLE_BEG, 4001).                    %% 最小可修改id
-define(KEY_FIRST_LOGIN, 4001).                     %% 首次登陆标记
%% 4009 4010 4011
-define(KEY_SETTABLE_END, 5000).                    %% 最大可修改id


% 键值(全服性数据(永久)) 6001~8000
-define(KEY_LUCKY_RORATY_LOGS, 6001).               %% 幸运转盘记录
-define(KEY_MAIL_SENT_GROUPS, 6002).                %% 已经发了邮件通知要删的群组


% 键值(全服性数据(每日)) 8001~10000


% 临时数据,不持久化到数据库的 20001 ~ 30000



-endif.
