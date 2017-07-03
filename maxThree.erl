-module(maxThree).
-export([maximum/3]).

maximum(A,B,C) ->
  max(max(A,B), max(B,C)).

