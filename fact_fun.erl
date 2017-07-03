-module(fact_fun).
-export([fact/1]).

fact(N) ->
	fact(N,1).
fact(0,P) ->
   P;

fact(N,P) when N>=0 ->
	fact(N-1,N*P).
