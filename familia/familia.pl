copiar :- get0(X), ((X =\= -1, put(X),copiar);X == -1).

familia :- tell('nuevo_archivo.txt'), see('familia.txt'), copiar, seen, told,  tell(user), see('nuevo_archivo.txt'), copiar, seen.