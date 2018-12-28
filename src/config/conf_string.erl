%% -*- coding: latin-1 -*-
%%------------------------------------------------------------------------------
%% @File   : string
%% @Brief  : 字符串
%% @Author : Ryuu
%%------------------------------------------------------------------------------
-module(conf_string).

-export([
    get/1
]).

get(mail_default_title) ->
    #{
        key => mail_default_title,
        string => <<"系统">>
    };
get(mail_default_content) ->
    #{
        key => mail_default_content,
        string => <<"邮件内容">>
    };
get(mail_from_name_sys) ->
    #{
        key => mail_from_name_sys,
        string => <<"系统">>
    };
get(monday) ->
    #{
        key => monday,
        string => <<"周一">>
    };
get(team_target_nil) ->
    #{
        key => team_target_nil,
        string => <<"无目标">>
    };
get(you) ->
    #{
        key => you,
        string => <<"你">>
    };
get(guild_wine_dice) ->
    #{
        key => guild_wine_dice,
        string => <<"我抛出了~s（共~w点）">>
    };
get(guild_wine_like_max1) ->
    #{
        key => guild_wine_like_max1,
        string => <<"~s，这运气也太好了吧！">>
    };
get(guild_wine_like_max2) ->
    #{
        key => guild_wine_like_max2,
        string => <<"能不能抱一下你的大腿，~s！">>
    };
get(guild_wine_dislike_max1) ->
    #{
        key => guild_wine_dislike_max1,
        string => <<"哇，太夸张了，不科学！">>
    };
get(guild_wine_dislike_max2) ->
    #{
        key => guild_wine_dislike_max2,
        string => <<"~s，还能再高一点嘛？">>
    };
get(guild_wine_like_min1) ->
    #{
        key => guild_wine_like_min1,
        string => <<"6666，点赞！">>
    };
get(guild_wine_like_min2) ->
    #{
        key => guild_wine_like_min2,
        string => <<"可以可以！">>
    };
get(guild_wine_dislike_min1) ->
    #{
        key => guild_wine_dislike_min1,
        string => <<"是不是没有洗手？">>
    };
get(guild_wine_dislike_min2) ->
    #{
        key => guild_wine_dislike_min2,
        string => <<"这也太菜了吧！">>
    };
get(guild_wine) ->
    #{
        key => guild_wine,
        string => <<"行酒令">>
    };
get(guild_quiz) ->
    #{
        key => guild_quiz,
        string => <<"答题">>
    };
get(guild_dice) ->
    #{
        key => guild_dice,
        string => <<"抛骰子">>
    };
get(guild_comment) ->
    #{
        key => guild_comment,
        string => <<"点评">>
    };
get(invite_in_group_msg) ->
    #{
        key => invite_in_group_msg,
        string => <<"~s邀请你进入~s群组，是否同意">>
    };
get(_) ->
    undefined.
