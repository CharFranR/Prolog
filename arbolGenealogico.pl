progenitor(carlos,patricia).
progenitor(carlos,ana).
progenitor(maria,ana).
progenitor(ana,alfredo).
progenitor(ana,morgan).
progenitor(morgan,yaqui).

% Género
hombre(carlos).
hombre(alfredo).

mujer(patricia).
mujer(ana).
mujer(maria).
mujer(morgan).
mujer(yaqui).

% Reglas
abuelo(X,Y):- progenitor(X,Z), progenitor(Z,Y).
tio(X,Y):- progenitor(Z,Y), progenitor(V,Z), progenitor(V,X), Z \= X.
bisabuelo(X,Y):- progenitor(X,A), progenitor(A,B), progenitor(B,Y).
tatarabuelo(X,Y):- progenitor(X,A), progenitor(A,B), progenitor(B,C), progenitor(C,Y).

% Reglas de género y relaciones
es_hombre(X):- hombre(X).
es_mujer(X):- mujer(X).

es_madre(X,Y):- progenitor(X,Y), mujer(X).
es_padre(X,Y):- progenitor(X,Y), hombre(X).

es_hermano(X,Y):- progenitor(Z,X), progenitor(Z,Y), hombre(X), X \= Y.
es_hermana(X,Y):- progenitor(Z,X), progenitor(Z,Y), mujer(X), X \= Y.
