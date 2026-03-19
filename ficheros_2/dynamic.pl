:- module(pila,[],[]).
:- dynamic datos/1.

push(NuevoDato) :- asserta(datos(NuevoDato)).

pop(Dato) :- retract(datos(Dato)).