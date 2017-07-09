-module(list_utils).
-export([join/2]).

join([],Xs) ->
  Xs;
join(Ys,[]) ->
  Ys;
join(X,[Y|Ys]) ->
  join([X|Y],Ys).
