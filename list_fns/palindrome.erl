-module(palindrome).
-export([palind/1,nopunct/1,nocap/1,nocaps/1,palindromes/1,reverse/1,reverse/2]).

palindromes(Xs) ->
   palind(nocaps(nopunct(Xs))).

nopunct([]) ->
  [];
nopunct([X|Xs]) ->
   case lists:member(X,",./\;:' _*!\t\n\'\"") of
    true ->
       nopunct(Xs);
    false ->
    [ X|  nopunct(Xs)]
   end.

nocaps([]) ->
   [];
nocaps([X|Xs])->
  [ nocap(X) | nocaps(Xs)].

nocap(X) ->
   case $A =< X andalso X=< $Z of 
   true ->
      X+32;
   false -> X
   end.

palind(Xs) ->
  Xs == reverse(Xs).

reverse(Xs) ->
   reverse(Xs,[]).

reverse([],Ys) ->
  Ys;
reverse([X|Xs],Ys) ->
  reverse(Xs,[X|Ys]).
