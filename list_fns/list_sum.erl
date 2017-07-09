-module(list_sum).
-export([sum/1,sum_tail/1,sum_tail/2]).

sum([]) ->
   0;

sum([X|Xs]) ->
   X + sum(Xs).

sum_tail(Xs) ->
   sum_tail(Xs,0).

sum_tail([],S) ->
    S;
sum_tail([X|Xs],S) ->
   sum_tail(Xs,X+S).
