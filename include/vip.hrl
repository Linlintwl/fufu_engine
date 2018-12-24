%%-------------------------------------------------------
%% @File     : vip.hrl
%% @Brief    : vip定义
%% @Author   : cablsbs
%% @Date     : 2018-6-12
%%---------------------------------------------------------

%% 避免头文件多重包含
-ifndef(__VIP_H__).
-define(__VIP_H__, 1).

-define(DEFAULT_VIP_LEVEL, 3).

-define(role_vip, #{
    level => 0,             % vip等级
    exp => 0,               % vip经验(累计rmb)
    last_update => 0,       % 更新时间
    got_gifts => []         % 已领取奖励
}).

-define(SQL_GET_ROLE_VIP,
    <<"SELECT `level`, `exp`, `got_gifts`, `last_update` FROM `role_vip` WHERE `role_id` = ~p">>
).

-define(SQL_SAVE_ROLE_VIP,
    <<"REPLACE INTO `role_vip` (`role_id`, `level`, `exp`, `got_gifts`, `last_update`) "
      " VALUES (~p, ~p, ~p, '~s', ~p)">>
).


-endif.

