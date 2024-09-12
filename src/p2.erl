%%%-------------------------------------------------------------------
%%% @author Lauren Ferlito and AJ Valentino
%%% @copyright (C) 2024, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. Sep 2024 9:11 PM
%%%-------------------------------------------------------------------
-module(p2).
-author("Lauren Ferlito and AJ Valentino").

%% API
-export([hello_world/0, get_numData/0]).

%% Function to print Hello, World!
hello_world() ->
  io:format("Hello, World!~n").

%% Function to read a number from the user
%% AJ, does the function below work for you?
get_numData() ->
  {ok, Num} = io:read("Enter a number: "),
  io:format("The number you entered is: ~w~n", [Num]).
