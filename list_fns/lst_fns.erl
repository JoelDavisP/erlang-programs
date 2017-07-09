-module(lst_fns).
-export([double/1,even/1,count/1,max_ls/1,sort/1,median/1,pos/2]).

double([]) ->
  [];
double([X|Xs]) ->
  [(2*X) | double(Xs)].

even([]) ->
  [];
even([X|Xs]) when X rem 2 == 0 ->
   [X | even(Xs)];
even([X|Xs]) when X rem 2 =/= 0 ->
   even(Xs).

count([]) ->
  0;
count([_X|Xs]) ->
  1+count(Xs).

max_ls([X]) ->
  X;
max_ls([Y|Ys]) ->
max(Y,max_ls(Ys)).

sort([X]) -> 
  [X];
sort([X|Xs]) -> case (X== max_ls([X|Xs])) of
      true ->   [X | sort(Xs)];
      false -> sort(Xs ++ [X]) 
 end.   
median([S]) ->
 [S];
median([X|Xs]) ->
  Mid = count([X|Xs]) div 2,
  S = sort([X|Xs]),
  case(count([X|Xs]) rem 2 == 0) of
     true -> 
      (pos(S,Mid)+pos(S,Mid-1)) /2;
     false ->
      pos(S,Mid)
    end.

pos([X|Xs],P) ->
   pos([X|Xs],P,0).
pos([X|_Xs],P,C) when P == C ->
   X;
pos([_X|Xs],P,C) when P =/= C ->
   pos(Xs,P,C+1).
