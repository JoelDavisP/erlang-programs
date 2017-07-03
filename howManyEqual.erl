-module(howManyEqual).
-export([equ/3]).

equ(X,X,X) -> 3;
equ(X,_,X) -> 2;
equ(X,X,_) -> 2;
equ(_,X,X) -> 2;
equ(_,_,_) -> 0.


