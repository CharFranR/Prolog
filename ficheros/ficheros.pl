imprime_lista(_Fichero, []).
imprime_lista(Fichero,[C|R]) :- tell(Fichero), write(C), nl, imprime_lista(Fichero,R),told.

pruebaFitch :- write('Introduza una lista: '),nl, read(Lis), tell('arch.txt'), imprime_lista('arch.txt', Lis), write('La lista se ha escrito en el fichero arch.txt'), told.