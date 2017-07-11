-module(list_utils).
-export([join/2,members/2,concat/1,quicksort/1,split/2,split/4]).

join([],Xs) ->
   Xs;
join(Xs,[]) ->
  Xs;
join([X|Xs],Ys) ->
  [X | join(Xs,Ys)].

concat([]) ->
   [];
concat([X|Xs]) ->
  join(X,concat(Xs)).


members(_K,[])->
  false;
members(K,[X|_Xs]) when K == X ->
  true;
members(K,[X|Xs]) when K =/= X ->
  members(K,Xs).


quicksort([]) ->
   [];
quicksort([X]) ->
   [X];
quicksort([X|Xs]) ->
   Piv = hd([X|Xs]),
   {L,R} = split(Piv,[X|Xs]),
   concat([quicksort(L), [Piv] , quicksort(R)]).


split(Piv,[X|Xs]) ->
  split(Piv,[X|Xs],[],[]).

split(_p,[],L,R) ->
   {L,R};
split(Piv,[X|Xs],L,R) when X < Piv ->
  split(Piv, Xs, L ++ [X], R);
split(Piv,[X|Xs],L,R) when X > Piv ->
  split(Piv, Xs, L, R ++ [X]);
split(Piv, [X|Xs], L, R) when X == Piv ->
split(Piv, Xs, L, R).






