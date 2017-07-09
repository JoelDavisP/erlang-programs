-module(palindrome2).
-export([palin/1,reverse/1,shunt/2]).
palin(Xs) ->
  Xs == reverse(Xs).

reverse(Xs) ->
  shunt(Xs,[]).


shunt([],Y) ->
  Y;
shunt([X|Xs],Y) ->
  shunt(Xs,[X|Y]).
