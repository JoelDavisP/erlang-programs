-module(xoring).
-export([xOr/2]).

xOr(X,X) ->
  false;
xOr(_,_) ->
  true.
