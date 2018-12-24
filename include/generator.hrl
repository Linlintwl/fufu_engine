%%% ----------------------------------------------------------------------------
%%% @author Ryuu
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%     ID生成
%%% @end
%%% ----------------------------------------------------------------------------
-ifndef(__GENERATOR_HRL__).
-define(__GENERATOR_HRL__, 1).

%% 生成ID宏
-define(SERVER_NUM_OFFSET, 44).         %% 服id偏移(1~1048576)
-define(TIMESTAMP_OFFSET, 12).          %% 时间偏移
-define(AUTO_ID_OFFSET, 8).             %% ID偏移
-define(MAX_ID_IN_SECOND, 4000).        %% 同一秒最多创角数

-define(GEN_ROLE, 1).
-define(GEN_GUILD, 2).
-define(GEN_MARRY, 3).
-define(GEN_AUCTION, 4).
-define(GEN_TEAM, 5).
-define(GEN_MARKET, 6).
-define(GEN_GROUP, 7).

-define(GEN_LOGIC, [
    ?GEN_ROLE, ?GEN_GUILD, ?GEN_MARRY, ?GEN_AUCTION, ?GEN_TEAM, ?GEN_MARKET, ?GEN_GROUP
]).

-endif.
