% Crea un programa recursivo suma_potencias(N, Resultado) que calcule la suma de todas las potencias de 2 desde 2 ^ 0 hasta 2 ^ N

potencia(0,1).
potencia(N,R) :- N > 0, A is N-1, potencia(A,P), R is (2**N) + P. 