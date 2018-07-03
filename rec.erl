-module(rec).
-export([fac/1, fac2/1, do_fac2/2]).

fac(1) ->
1;
fac(N) ->
  N * fac(N-1).


fac2(N) ->
  do_fac2(N, 1).

do_fac2(1, Acc) ->
  Acc;
do_fac2(N, Acc) ->
  do_fac2(N-1, N*Acc).
