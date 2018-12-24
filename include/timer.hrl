%%% ----------------------------------------------------------------------------
%%% @author Ryuu
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%     Timer
%%% @end
%%% ----------------------------------------------------------------------------
-ifndef(__TIMER_HRL__).
-define(__TIMER_HRL__, 1).

-define(TIMER_SEC, sec).
-define(TIMER_MIN, min).
-define(TIMER_HRS, hrs).
-define(TIMER_DAY, day).

-define(TIMER_ALL, [
    ?TIMER_SEC, ?TIMER_MIN, ?TIMER_HRS, ?TIMER_DAY
]).

-endif.
