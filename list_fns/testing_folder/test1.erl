-module(test1).
-export([mid_el/1,pos_at/2,join/2,pos_at/3,split/2,split/4,merge/2,merge/3]).

join([],Xs)->
  Xs;
join(Xs,[]) ->
  Xs;
join([X|Xs],Y) ->
  [X |join(Xs,Y)].


 mid_el([X|Xs]) when length([X|Xs]) rem 2 == 0 ->
   length([X|Xs]) div 2;

 mid_el([X|Xs]) when length([X|Xs]) rem 2 =/= 0 ->
   (length([X|Xs]) div 2) + 1 .


pos_at([X|Xs],P) ->
   pos_at([X|Xs],P,1).  

pos_at([X|_Xs],M,N) when M==N ->
   X;

pos_at([_X|Xs],M,N) when M=/=N ->
  pos_at(Xs,M,N+1).


split(Piv,[X|Xs]) ->
  split(Piv,[X|Xs],[],[]).

split(_,[],L,R) ->
  {L,R};

split(Piv,[X|Xs],L,R) when Piv == X ->
   split(Piv,[],L ++ [X],join(R,Xs));

split(Piv,[X|Xs],L,R) when Piv =/= X ->
   split(Piv,Xs,L ++ [X],R).


merge([X|Xs],[Y|Ys]) ->
  merge([X|Xs],[Y|Ys],[]).

merge([],[],Z) ->
   Z;
merge([],Xs,Z) ->
   join(Z,Xs);
merge(Ys,[],Z) ->
   join(Z,Ys);
merge([X|Xs],[Y|Ys],Z) when X =< Y ->
   merge(Xs,[Y|Ys], Z ++ [X]);

merge([X|Xs],[Y|Ys],Z) when X > Y ->
   merge([X|Xs],Ys, Z ++ [Y]).

