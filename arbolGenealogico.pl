progenitor(carlos,patricia).
progenitor(carlos,ana).
progenitor(maria,ana).
progenitor(ana,alfredo).
progenitor(ana,morgan).
progenitor(morgan,yaqui).

% Género
hombre(carlos).
hombre(alfredo).
hombre(morgan).

mujer(patricia).
mujer(ana).
mujer(maria).
mujer(yaqui).

% Reglas
es_hombre(X):- hombre(X).
es_mujer(X):- mujer(X).

es_madre(X):- progenitor(X,_), mujer(X).
es_padre(X):- progenitor(X,_), hombre(X).

es_hijo(X):- progenitor(_,X), hombre(X).
es_hija(X):- progenitor(_,X), mujer(X).

es_hermano(X):- progenitor(Z,X), progenitor(Z,Y), hombre(X), X \= Y.
es_hermana(X):- progenitor(Z,X), progenitor(Z,Y), mujer(X), X \= Y.

es_hermano_de(X, Y):- progenitor(Z,X), progenitor(Z,Y), hombre(X), X \= Y.
es_hermana_de(X, Y):- progenitor(Z,X), progenitor(Z,Y), mujer(X), X \= Y.

es_tio(X):- progenitor(Z,_), progenitor(V,Z), progenitor(V,X), hombre(X), Z \= X.
es_tia(X):- progenitor(Z,_), progenitor(V,Z), progenitor(V,X), mujer(X), Z \= X.

es_abuelo_de(X,Y):- progenitor(X,Z), progenitor(Z,Y),hombre(X).
es_abuela_de(X,Y):- progenitor(X,Z), progenitor(Z,Y),mujer(X).

es_bisabuelo_de(X,Y):- progenitor(X,A), progenitor(A,B), progenitor(B,Y),hombre(X).
es_bisabuela_de(X,Y):- progenitor(X,A), progenitor(A,B), progenitor(B,Y),mujer(X).

es_tatarabuelo_de(X,Y):- progenitor(X,A), progenitor(A,B), progenitor(B,C), progenitor(C,Y), hombre(X).
es_tatarabuela_de(X,Y):- progenitor(X,A), progenitor(A,B), progenitor(B,C), progenitor(C,Y), mujer(X).