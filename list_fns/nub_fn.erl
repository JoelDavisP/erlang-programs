-module(nub_fn).
-export([nub/1,rem_all/2]).

nub([]) ->
  [];
nub([X|Xs]) ->
  [X |nub(rem_all(X,Xs))].

rem_all(X,[]) ->
  [];
rem_all(X,[X|Xs]) ->
  rem_all(X,Xs);
rem_all(X,[Y|Xs]) ->
  [Y|  rem_all(X,Xs)].
