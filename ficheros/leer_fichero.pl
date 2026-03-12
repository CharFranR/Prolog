verFich :- write('Nombre de Fichero: '), read(N),
            seeing(Antes), see(N), recorrer,
            seen, see(Antes).

recorrer :- repeat,
            get(C),((C=\= -1, put(C), recorrer); C == -1).