-module(list_prod_max).
-export([prod/1,prod/2,max_ls/1,max_ls/2]).

prod(Xs) ->
  prod(Xs,1).

prod([],P) ->
  P;

prod([X|Xs],P) ->
  prod(Xs, X*P).

max_ls(Ys) ->
  max_ls(Ys,0).

max_ls([],M) ->
   M;
max_ls([S],M) ->
   max(S,M);
max_ls([Y,Z|Ys],M) ->
   max_ls(Ys,max(max(Y,Z),M)).
