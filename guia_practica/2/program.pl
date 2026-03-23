captura_fichero :- get0(X), ((X =\= -1, put(X), captura_fichero); X == -1).

es_primo(2).
es_primo(3).
es_primo(P) :- P > 3, P mod 2 =\= 0, not(tiene_divisor(P, 3)).
tiene_divisor(P, D) :- P mod D =:= 0.
tiene_divisor(P, D) :- D * D < P, D2 is D + 2, tiene_divisor(P, D2).

ejercicio2 :- 
    see('valores.txt'), tell('primos.txt'), leer_y_filtrar, seen, told,
    see('primos.txt'), captura_fichero, seen, nl.

leer_y_filtrar :- read(N), evaluar(N).
evaluar(end_of_file).
evaluar(N) :- N \== end_of_file, filtrar(N), leer_y_filtrar.

filtrar(N) :- es_primo(N), write(N), write('.'), nl.
filtrar(N) :- not(es_primo(N)).