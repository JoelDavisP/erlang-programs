-module(take_N).
-export([take/2,take_splt/2]).

take(0,_N) ->
    [];
take(_N,[]) ->
    [];
take(N,[X|Xs]) when N >0 ->
    [X | take(N-1,Xs)].

take_splt(N,[X|Xs]) ->
  {S,_E} = lists:split(N,[X|Xs]),
         S.
