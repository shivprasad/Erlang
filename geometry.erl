-module(geometry).
-export([area/1]).

area({Width,Length}) -> Width*Length;
area({Radius}) -> 3.14 * Radius * Radius.