-module(area_of_shapes).
-export([area/1]).

area({circle, {_,_}, R}) ->
   math:pi()*R*R;
area({rectangle, {_,_}, H,W}) ->
   H*W;
area({right_tri, {_,_}, B,H}) ->
   B*H/2.
