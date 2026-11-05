%%%-------------------------------------------------------------------
%% @doc nostrbeam public API
%% @end
%%%-------------------------------------------------------------------

-module(nostrbeam_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    io:format("My Erlang app is running..!~n"),
    nostrbeam_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
