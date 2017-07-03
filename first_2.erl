-module(first_2).
-export([double/1,mult/2]).

mult(X,Y) ->
	Y*X.
double(X) ->
	mult(X,2).
