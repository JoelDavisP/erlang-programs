-module(second).
-export([hypo_size/2,area/2,perimetre/2]).

hypo_size(B,C) ->
	math:sqrt(first:square(B) + first:square(C)).

area(X,Y) ->
	(X*Y)/2.

perimetre(X,Y) ->
	X+Y+ hypo_size(X,Y).
