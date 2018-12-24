%%-------------------------------------------------------
%% @File     : kf.hrl
%% @Brief    : 跨服相关
%% @Author   : cablsbs
%% @Date     : 2018-6-12
%%---------------------------------------------------------
%% 避免头文件多重包含
-ifndef(__KF_H__).
-define(__KF_H__, 1).

% 角色跨服逻辑基础数据
-define(kf_role, #{
    id => 0,                    % 角色id
    server_id => 0,             % 服务器id
    pid => undefined,           % 进程id
    sid => undefined            % 发送进程id
}).


-endif.
