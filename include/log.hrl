%%% ----------------------------------------------------------------------------
%%% @author Ryuu
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%     日志头文件
%%% @end
%%% ----------------------------------------------------------------------------
-ifndef(__LOG_HRL__).
-define(__LOG_HRL__, 1).

-compile({parse_transform, lager_transform}).

-define(INFO(F), lager:info(F)).
-define(INFO(F, A), lager:info(F, A)).
-define(DEBUG, lager:debug("")).
-define(DEBUG(F), lager:debug(F)).
-define(DEBUG(F, A), lager:debug(F, A)).
-define(DEBUG_FUNC_CALL(Args), ?DEBUG("calling ~p:~p/~p with Args: ~p", [?MODULE, ?FUNCTION_NAME, ?FUNCTION_ARITY, Args])).
-define(ERROR(F), lager:error(F)).
-define(ERROR(F, A), lager:error(F, A)).
-define(ERROR_FUNC_CALL(Args), ?ERROR("Unexpected calling ~p:~p/~p with Args: ~p", [?MODULE, ?FUNCTION_NAME, ?FUNCTION_ARITY, Args])).

-endif.
