-module(map_sqr).
-export([square/1,funct/1]).

square([]) ->
  [];
square([X|Xs]) ->
  lists:map(fun funct/1,[X|Xs]).

funct(X) ->
   X*X.

