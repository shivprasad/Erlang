-module(math).
-export([factorial/1,sum/1,find/0]).

factorial(1) -> 1;
factorial(Number) -> Number * factorial(Number-1).

sum([]) -> 0;
sum([H|T]) -> H + sum(T).

find() -> next(19,18).

next(Number,Divideby) -> match(Number rem Divideby - Divideby + 1,Divideby,Number).

match(1,2,N) -> next(N+1,18);
match(0,2,N) -> N;
match(0,D,N) -> next(N,D-1);
match(A,D,N) -> next(N+1,18).

