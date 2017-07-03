-module(max_fns).
-export([max_fn/1,fn/1]).

fn(X) ->
  (X*X*X).

max_fn(N) ->
  max_fn(N,0).

max_fn(0,P) ->
  P;

max_fn(N,P) ->
  max_fn(N-1,max(fn(N),P)).
