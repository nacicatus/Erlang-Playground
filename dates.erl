%% The re:split 
-module(dates).
-export([date_parts/1]).


%% @doc Takes a string in ISO format (yyyy-mm-dd) and
%% returns a list of integers in form {year, month, day}

-spec date_parts(string()) -> {non_neg_integer(), non_neg_integer(), non_neg_integer()}.

date_parts(DateStringInISOFormat) ->
  [YearString, MonthString, DateString] = re:split(DateStringInISOFormat, "-", [{return, list}]),
  {list_to_integer(YearString), list_to_integer(MonthString), list_to_integer(DateString)}.
