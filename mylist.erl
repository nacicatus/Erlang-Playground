-module(mylist).
-export([len/1]).
-spec len([term()]) -> non_neg_integer().

len([]) ->
  0;
len([_H|T]) ->
  1 + len(T).
