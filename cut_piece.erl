-module(cut_piece).
-export([cut/1]).

cut(0) ->
  1;
cut(N) when N> -1 ->
  N+cut(N-1).
