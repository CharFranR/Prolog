% Ejercicio 1.

minimo(X,Y,X):- X=<Y.
minimo(X,Y,Y):- Y=<X.

% Ejercicio 2.

notas:- write('Ingrese la nota: '), read(P), (P =< 69 -> write('Aprobado') ; P >= 70, P =< 79 -> write('Bueno') ; P >= 80, P =< 89 -> write('Muy bueno') ; P >= 90, P =< 100 -> write('Excelente') ; write('Nota inválida')).