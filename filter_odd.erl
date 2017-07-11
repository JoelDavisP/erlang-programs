-module(filter_odd).
-export([filt_odd/1,odd/1]).

filt_odd([]) ->
  [];

filt_odd([X|Xs]) ->
  lists:filter(fun odd/1, [X|Xs]).

odd(X) when X rem 2 =/= 0 ->
  true;
  
odd(X) when X rem 2 == 0 ->
  false.

