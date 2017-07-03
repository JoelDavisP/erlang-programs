-module(simple).
-export([equal/2]).

equal(X,X) ->
  1;
equal(_X,_Y) ->
  0.

