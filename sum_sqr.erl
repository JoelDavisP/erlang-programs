-module(sum_sqr).
-export([square/1,sum/1]).

square(X) ->
   X*X.

sum(Y) ->
   sum(Y,0).
sum(0,P) ->
  P;
sum(N,P) ->
   sum(N-1,P+square(N)).
  
