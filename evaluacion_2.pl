% Hechos

progenitor(maria,oscar).
progenitor(esther,maria).
progenitor(carlos,maria).

progenitor(oscar_padre,oscar).
progenitor(oscar_abuelo,oscar_padre).
progenitor(marixa,oscar_padre).

hombre(oscar).
hombre(oscar_padre).
hombre(oscar_abuelo).
hombre(carlos).

mujer(maria).
mujer(esther).
mujer(marixa).

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

% Reglas (X,Y)

es_hijo_de(X,Y):- progenitor(Y,X), hombre(X).
es_hija_de(X,Y):- progenitor(Y,X), mujer(X).

es_madre_de(X,Y):- progenitor(X,Y), mujer(X).
es_padre_de(X,Y):- progenitor(X,Y), hombre(X).

es_abuelo_de(X,Y):- progenitor(X,Z), progenitor(Z,Y),hombre(X).
es_abuela_de(X,Y):- progenitor(X,Z), progenitor(Z,Y),mujer(X).

es_hermano_de(X,Y):- progenitor(Z,X), progenitor(Z,Y), hombre(X), X \= Y.
es_hermana_de(X,Y):- progenitor(Z,X), progenitor(Z,Y), mujer(X), X \= Y.