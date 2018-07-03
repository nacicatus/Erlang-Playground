-module(jungle).
-export([greet/1]).
%% Specify the function
-spec greet({atom(), atom() | string(), number()})
 -> ok.

greet(Animal) ->
	case Animal of
		{butterfly, _Name, Age} when 2 =< Age, Age =< 5 ->
			io:format("Catch the butterfly!~n");
		{monkey, Name, _Age} ->
			io:format("Be careful of the branches, ~s!~n", [Name]);
		{tiger, _Name, Age} when Age =< 2; 20 =< Age ->
			io:format("I'm not afraid of you!~n");
		{tiger, _Name, _Age} ->
			io:format("Run!~n");
		{_Species, Name, _Age} ->
			io:format("Hello ~s!~n", [Name]);
		Other ->
			throw({unexpected_value, Other})
	end.
