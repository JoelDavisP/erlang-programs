-module(quick_sort).
-export([concat/1,join/2,qsort/1,split/2,split/4]).

join([],X) ->
   X;
join(Y,[]) ->
  Y;
join([X|Xs],Y) ->
  [X| join(Xs,Y)].

concat([]) ->
  [];

concat([X|Xs]) ->
  join(X, concat(Xs)).

qsort([]) ->
  [];
qsort([X|Xs]) ->
  Piv = hd([X|Xs]),
 {L,R} = split(Piv,[X|Xs]),
concat([qsort(L),[Piv],qsort(R)]).


split(Pivot,[X|Xs]) ->
   split(Pivot,[X|Xs],[],[]).

split(_X,[],L,R) ->
   {L,R};
split(Pivot,[X|Xs],L,R) when X < Pivot ->
  split(Pivot, Xs , L ++ [X], R);
split(Pivot,[X|Xs], L,R) when X > Pivot ->
  split(Pivot,Xs, L, R ++ [X]);
split(Pivot,[X|Xs],L,R) when X == Pivot ->
  split(Pivot, Xs,L,R).
