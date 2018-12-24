%%-------------------------------------------------------
%% @File     : assets.hrl
%% @Brief    : 资产定义
%% @Author   : cablsbs
%% @Date     : 2018-6-12
%%---------------------------------------------------------
%% 避免头文件多重包含
-ifndef(__ASSETS_H__).
-define(__ASSETS_H__, 1).

%% 角色资产数据
-define(role_assets, #{
    gold => 0,              %% 元宝
    bgold => 0,             %% 绑元
    coin => 0,              %% 铜钱
    fcoin => 0,             %% 友情币
    cont => 0,              %% 帮派贡献
    currency => 0,          %% 帮派通宝
    credit => 0,            %% 声望
    forge_s => 0,           %% 打造积分
    essence => 0,           %% 百炼精华
    emprise => 0,           %% 侠义值
    silver => 0,            %% 银两
    sgold => 0,             %% 储备元宝
    wfruit => 0,            %% 许愿果
    tball => 0,             %% 宝珠
    jifen => 0,             %% 积分
    peach_value => 0,       %% 桃李值
    love_value => 0,        %% 历史恩爱值
    fate_token => 0,        %% 天命印记
    song_liao => 0          %% 宋辽积分
}).

%% 角色资产类型定义
-define(AST_EXP, 1).        %% 经验
-define(AST_GOLD, 2).       %% 元宝
-define(AST_BGOLD, 3).      %% 绑元
-define(AST_COIN, 4).       %% 铜钱
-define(AST_ITEM, 5).       %% 道具(类型)
-define(AST_ITEM_C, 6).     %% 道具(格子, 服务端用, 仅消耗)
-define(AST_DEPOT_C, 8).    %% 仓库(格子, 服务端用, 仅消耗)
-define(AST_COIN_F, 9).     %% 友情币
-define(AST_CONT, 10).      %% 帮派贡献
-define(AST_CREDIT, 11).    %% 声望
-define(AST_CURRENCY, 12).  %% 帮派通宝
-define(AST_BGOLD_F, 13).   %% 绑元优先
-define(AST_FORGE_S, 14).   %% 打造积分
-define(AST_ESSENCE, 15).   %% 百炼精华
-define(AST_EMPRISE, 16).   %% 侠义值
-define(AST_SILVER, 17).    %% 银两
-define(AST_SGOLD, 18).     %% 储备元宝
-define(AST_WFRUIT, 19).    %% 许愿果
-define(AST_TBALL, 20).     %% 宝珠
-define(AST_JIFEN, 21).     %% 积分
-define(AST_PEACH_VALUE, 22).%% 桃李值
-define(AST_LOVE_VALUE, 23).%% 历史恩爱值
-define(AST_FATE_TOKEN, 24).%% 天命印记
-define(AST_SGOLD_F, 25).   %% 储备元宝优先
-define(AST_SONG_LIAO, 26). %% 宋辽积分
-define(AST_PET, 27).       %% 宠物
-define(AST_PET_C, 28).     %% 宠物(格子)

%% 金钱
-define(AST_IS_MONEY(Type), (
    Type =:= ?AST_GOLD
        orelse Type =:= ?AST_BGOLD
        orelse Type =:= ?AST_COIN
        orelse Type =:= ?AST_COIN_F
        orelse Type =:= ?AST_CONT
        orelse Type =:= ?AST_CREDIT
        orelse Type =:= ?AST_CURRENCY
        orelse Type =:= ?AST_BGOLD_F
        orelse Type =:= ?AST_FORGE_S
        orelse Type =:= ?AST_ESSENCE
        orelse Type =:= ?AST_EMPRISE
        orelse Type =:= ?AST_SILVER
        orelse Type =:= ?AST_SGOLD
        orelse Type =:= ?AST_WFRUIT
        orelse Type =:= ?AST_TBALL
        orelse Type =:= ?AST_JIFEN
        orelse Type =:= ?AST_PEACH_VALUE
        orelse Type =:= ?AST_LOVE_VALUE
        orelse Type =:= ?AST_FATE_TOKEN
        orelse Type =:= ?AST_SGOLD_F
        orelse Type =:= ?AST_SONG_LIAO
)).

%% 数值类型
-define(AST_IS_NUMERIC(Type), (
    ?AST_IS_MONEY(Type)
        orelse Type =:= ?AST_EXP
)).

%% 道具
-define(AST_ITEM_LIKE(Type), (
    Type =:= ?AST_ITEM
        orelse Type =:= ?AST_ITEM_C
%%        orelse Type =:= ?AST_EQUIP_C
)).

%% 宠物
-define(AST_PET_LIKE(Type), (
    Type =:= ?AST_PET
        orelse Type =:= ?AST_PET_C
)).

-endif.
