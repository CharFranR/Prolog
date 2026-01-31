% Hechos

progenitor(esther,maria).
progenitor(carlos,maria).

progenitor(esther,william).
progenitor(carlos,william).
progenitor(esther,ervin).
progenitor(carlos,ervin).

progenitor(oscar_abuelo,oscar_padre).
progenitor(marixa,oscar_padre).

progenitor(william,leonie).
progenitor(william,alexander).
progenitor(william,cedrick).

progenitor(oscar_padre,oscar).
progenitor(maria,oscar).

progenitor(ervin,keneri).
progenitor(ervin,leonela).

% Género
hombre(oscar).
hombre(oscar_padre).
hombre(oscar_abuelo).
hombre(carlos).
hombre(william).
hombre(ervin).
hombre(alexander).
hombre(cedrick).
hombre(keneri).

mujer(maria).
mujer(esther).
mujer(marixa).
mujer(leonie).
mujer(leonela).


% Reglas

% Reglas (X)

es_hombre(X):- hombre(X).
es_mujer(X):- mujer(X).

es_hijo(X):- progenitor(_,X), hombre(X).
es_hija(X):- progenitor(_,X), mujer(X).

es_madre(X):- progenitor(X,_), mujer(X).
es_padre(X):- progenitor(X,_), hombre(X).

es_abuelo(X):- progenitor(X,Z), progenitor(Z,_),hombre(X).
es_abuela(X):- progenitor(X,Z), progenitor(Z,_),mujer(X).

es_primo(X):- progenitor(Z,X), progenitor(W,_), progenitor(P,Z), progenitor(P,W), Z \= W, hombre(X).
es_prima(X):- progenitor(Z,X), progenitor(W,_), progenitor(P,Z), progenitor(P,W), Z \= W, mujer(X).

es_tio(X):- progenitor(P,X), progenitor(P,Z), progenitor(Z,_), X \= Z, hombre(X).
es_tia(X):- progenitor(P,X), progenitor(P,Z), progenitor(Z,_), X \= Z, mujer(X).

es_hermano(X):- progenitor(Z,X), progenitor(Z,Y), hombre(X), X \= Y.
es_hermana(X):- progenitor(Z,X), progenitor(Z,Y), mujer(X), X \= Y.

% Reglas (X,Y)

es_hijo_de(X,Y):- progenitor(Y,X), hombre(X).
es_hija_de(X,Y):- progenitor(Y,X), mujer(X).

es_madre_de(X,Y):- progenitor(X,Y), mujer(X).
es_padre_de(X,Y):- progenitor(X,Y), hombre(X).

es_abuelo_de(X,Y):- progenitor(X,Z), progenitor(Z,Y),hombre(X).
es_abuela_de(X,Y):- progenitor(X,Z), progenitor(Z,Y),mujer(X).

es_hermano_de(X,Y):- progenitor(Z,X), progenitor(Z,Y), hombre(X), X \= Y.
es_hermana_de(X,Y):- progenitor(Z,X), progenitor(Z,Y), mujer(X), X \= Y.

es_primo_de(X,Y):- progenitor(Z,X), progenitor(W,Y), progenitor(P,Z), progenitor(P,W), Z \= W, hombre(X).
es_prima_de(X,Y):- progenitor(Z,X), progenitor(W,Y), progenitor(P,Z), progenitor(P,W), Z \= W, mujer(X).

es_tio_de(X,Y):- progenitor(P,X), progenitor(P,Z), progenitor(Z,Y), X \= Z, hombre(X).
es_tia_de(X,Y):- progenitor(P,X), progenitor(P,Z), progenitor(Z,Y), X \= Z, mujer(X).