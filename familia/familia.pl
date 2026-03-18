copiar :- get0(X), ((X =\= -1, put(X),copiar);X == -1).

familia :- tell('nuevo_archivo.txt'), see('familia.txt'), copiar, seen, told,  tell(user), see('nuevo_archivo.txt'), copiar, seen.

agregar_familiar(Nombre) :- see('familia.txt'), tell('temp.txt'), copiar, nl, write(Nombre), write('.'), told, seen, see('temp.txt'), tell('familia.txt'), copiar, told, seen.


mostrar_archivo :- see('familia.txt'), copiar, seen.              