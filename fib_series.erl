-module(fib_series).
-export([fibp/1,fib/1]).

fibp(0) ->
 {0,1};

fibp(N) ->
  {P,C} = fibp(N-1),
  {C,P+C}.

fib(N) ->
 {P,_} = fibp(N),
   P. 
