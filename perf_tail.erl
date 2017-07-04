-module(perf_tail).
-export([perf/3,perf/1]).

perf(N) ->
  perf(N,1,0).

perf(N,N,S) ->
  N==S;

perf(N,M,S) when N rem M == 0 ->
  perf(N,M+1,S+M);

perf(N,M,S) ->
  perf(N,M+1,S).

