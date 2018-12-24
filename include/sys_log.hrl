%%-------------------------------------------------------
%% @File     : sys_log.hrl
%% @Brief    : 系统日志定义
%% @Author   : cablsbs
%% @Date     : 2018-5-12
%%---------------------------------------------------------

%% 避免头文件多重包含
-ifndef(__SYS_LOG_H__).
-define(__SYS_LOG_H__, 0).

-define(SQL_LOG_LOGIN,
    <<"INSERT INTO `log_login` SET `role_id`=~p, `career`=~p, `level`=~p, `ip`='~s', `login_time`=~p">>
).

-define(SQL_LOG_LOGOUT,
    <<"INSERT INTO `log_logout` SET `role_id`=~p, `career`=~p, `level`=~p, `ip`='~s', `login_time`=~p, `logout_time`=~p">>
).

-define(SQL_COMBAT_POWER,
    <<"INSERT INTO `log_combat_power` SET `role_id`=~p, `ori_power`=~p, `power`=~p, `ctime`=~p, `is_lower`=~p">>
).

-define(SQL_LOG_ROLE_LV,
    <<"INSERT INTO `log_role_level`(`role_id`, `old_level`, `old_exp`, `amount`, `new_level`, `new_exp`, `opt`, `time`) "
      " VALUES (~w, ~w, ~w, ~w, ~w, ~w, ~w, ~w)">>
).



-endif.
