:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/html_write)).

:- http_handler('/', say_hi, []).

server(Port) :-
    http_server(http_dispatch, [port(Port)]).

say_hi(_Request) :-
    format('Content-type: text/html~n~n'),
    format('<html><head><title>Hola Mundo</title></head><body><h1>Hola Mundo desde Prolog!</h1></body></html>').

:- initialization(server(8080)).

