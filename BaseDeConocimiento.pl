% Ejercicio 1.

minimo(X,Y,X):- X=<Y.
minimo(X,Y,Y):- Y=<X.

% Ejercicio 2.

notas:- write('Ingrese la nota: '), read(P), (P =< 69 -> write('Regular') ; P >= 70, P =< 79 -> write('Bueno') ; P >= 80, P =< 89 -> write('Muy bueno') ; P >= 90, P =< 100 -> write('Excelente') ; write('Nota inválida')).

% Ejercicio 3.

cine:- write('Ingrese el género (mujer/varon): '), read(Genero), write('Ingrese la edad: '), read(Edad), ((Genero = mujer, Edad >= 18) -> write('Puede ingresar al cine') ; (Genero = varon, Edad >= 21) -> write('Puede ingresar al cine') ; write('No puede ingresar al cine')).
