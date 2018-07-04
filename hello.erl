
-module(hello).
-export([just_say/0]).

just_say() -> io:format("Hello World\n").
