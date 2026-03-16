captura_fichero :- get0(X), ((X =\= -1, put(X),captura_fichero);X == -1).

musica :- write('Introduce el nombre de una cancion: '), read(Song), tell('musica.txt'), write(Song), nl, see('letra.txt'),  captura_fichero, seen, tell('user'), write('Introduce el nombre del autor: '), read(Autor), tell('musica.txt'), nl, write(Autor),told, see('musica.txt'), captura_fichero, seen.


