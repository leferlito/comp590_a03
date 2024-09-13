%%%-------------------------------------------------------------------
%%% team: Lauren Ferlito and AJ Valentino
%%%-------------------------------------------------------------------
-module(p1).
-export([start/0, factorial/1]).

start() ->
    % Get input from the user. 
    % Better than io:read() because it allows more flexibility when you want to handle the input as a string and perform additional processing or validation vs just printing out the read value verbatim
    % Also with get_line you do not need to add the period after the input, just hit enter
    Input = io:get_line("Enter a number: "),
    
    % Built-in method that tries to convert string input to integer. Catch exception if fails
    case catch list_to_integer(string:trim(Input)) of
        % Failure case
        {'EXIT', _} -> 
            io:format("Not an integer~n");
        % Success cases
        Num when Num < 0 -> 
            % If the number is negative, calculate absolute value raised to the 7th power
            AbsValue = abs(Num),
            Result = math:pow(AbsValue, 7),
            io:format("Absolute value raised to the 7th power: ~w~n", [Result]);
        0 ->
            % If the number is 0, just print 0
            io:format("0~n");
        Num when Num > 0 -> 
            % If the number is positive, check if it is a multiple of 7
            if
                % Built-in rem operator is like modulus operator in python. Returns the remainder
                Num rem 7 == 0 ->
                    % If Num is a multiple of 7, compute the 5th root. Can represent as x^(1/5)
                    Root = math:pow(Num, 1/5),
                    io:format("5th root: ~w~n", [Root]);
                true -> % Code that executes when non of the above condition(s) are true
                    Factorial = factorial(Num),
                    io:format("Factorial: ~w~n", [Factorial])
            end
    end.
    
% Factorial definition n!=n×(n−1)×(n−2)×…×1
% Factorial function using recursion
factorial(0) -> 1; % Base case
factorial(N) when N >= 1 -> N * factorial(N - 1). 
