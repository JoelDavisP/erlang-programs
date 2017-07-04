-module(bit_sum_tail).
-export([sum/1,sum/2]).

sum(N) ->
  sum(N,0). % Starting case.

sum(0,_S) -> % Only in case of zero.
   0;
sum(1,S) -> % Add one since the last reminder value won't be added to that sum varriable.
   S+1;

sum(N,S) -> % Recursive case. I think this is the simplest and most suitable way of solving this problem. Another alternative way is direct recursion.
  sum(N div 2, S+(N rem 2)).




%Output:

%14> c(bit_sum_tail).                                      
%{ok,bit_sum_tail}
%15> bit_sum_tail: sum(10).                 
%2
%16> bit_sum_tail: sum(5). 
%2
%17> bit_sum_tail: sum(4).
%1
%18> bit_sum_tail: sum(3).
%2
%19> bit_sum_tail: sum(100).
%3
%20> bit_sum_tail: sum(32). 
%1
%21> bit_sum_tail: sum(31).
%5
%22> 

