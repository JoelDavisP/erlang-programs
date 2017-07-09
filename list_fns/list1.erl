-module(list1).
-export([head/1,tail/1,second/1]).

head([X|_Xs]) ->
   X.
tail([_X|Xs]) ->
   Xs.
second([_X,Y|_Zs]) -> 
   Y.

