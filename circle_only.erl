-module(circle_only).
-export([circle/1]).

circle([]) ->
   [];
circle([X|Xs]) ->
   case X of {circle, {_,_}, _} =C ->
       [ C| circle(Xs)];
     _ -> circle(Xs)
    end.
