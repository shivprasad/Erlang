-module(shopping).
-export([cart/1]).

cart([]) -> 0;
cart([H|T]) -> cost(H) + cart(T).

cost({apple,Qty}) -> 20 * Qty;
cost({banana,Qty}) -> 10 * Qty;
cost({orange,Qty}) -> 5 * Qty.
