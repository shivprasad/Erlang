-module(echo).
-export([loop/0,server/0,client/0]).

loop() ->
receive
	Name -> io:format("hi...~p~n",[Name])
end.


server() ->
receive
	100 -> Number +1,
	server();
	Number -> Caller ! Number +1,
	server()
end.

client() ->
receive
	{Call,Number} -> Call ! Number,
	clent();
	Number -> io:format("~p~n",Number),Caller ! Number + 1,
	client();
end.
