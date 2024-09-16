%%%-------------------------------------------------------------------
%%% team: Lauren Ferlito and AJ Valentino
%%%-------------------------------------------------------------------
-module(p2).
-author("Lauren Ferlito and AJ Valentino").

%% API
-export([loop/0]).

%% Recursive loop function
loop() ->
    p1:start(),  % Call the computation function from p1
    Input = io:get_line("Press enter to continue or '0' to quit: "),
    case string:trim(Input) of
        "0" -> 
            io:format("Exiting program.~n");
        _ ->
            loop()  % Tail recursion to continue looping
    end.
