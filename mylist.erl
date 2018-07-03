-module(mylist).
-export([len/1, len2/1, reverse/1]).


%% Return the length of a mylist

%% naive solution
-spec len([term()]) -> non_neg_integer().

len([]) ->
  0;
len([_H|T]) ->
  1 + len(T).

%% tail recursive solution
-spec len2([term()]) -> non_neg_integer().

len2(L) ->
  len2(L,0).


%% Calculate len2(L) + Acc
-spec len2([term()], non_neg_integer()) -> non_neg_integer().

len2([], Acc) ->
  Acc;
len2([_H|T], Acc) ->
  len2(T, Acc + 1).

%% Reverse a list
-spec reverse([term()]) -> [term()].

reverse(List) ->
  reverse(List, []).

%%Calculate reverse(L) ++ Acc
-spec reverse([term()], [term()]) -> [term()].
reverse([], Acc) ->
  Acc;
reverse([H|T], Acc) ->
  reverse(T, [H|Acc]).
