aleatorio (X):- X is random(10).

suma:- write('Ingrese el primer número: '), read(A), write('Ingrese el segundo número: '), read(B), S is A + B, write('La suma es: '), write(S).

media:- write('Ingrese el primer número: '), read(A), write('Ingrese el segundo número: '), read(B), S is A + B, M is S / 2, write('La media es: '), write(M).

peso:- write('Ingrese masa 1: '), read(M1), write('Ingrese masa 2:'), read(M2), P1 is M1 * 9.8, P2 is M2 * 9.8, write('El peso de masa 1 es: '), write(P1), nl, write('El peso de masa 2 es: '), write(P2).

% Conversión de córdobas a dólares
% Tipo de cambio: 36.60 córdobas = 1 dólar
convertir_cordobas_dolares:- 
    write('Ingrese la cantidad de córdobas: '), 
    read(Cordobas), 
    Dolares is Cordobas / 36.60, 
    write('Equivalente en dólares: $'), 
    write(Dolares).

