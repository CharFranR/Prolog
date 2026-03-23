:- dynamic parentesco/2.

familia :-
    write('Parentesco (o salir.): '), read(P),
    (P == salir -> listing(parentesco) ;
        write('Nombre: '), read(N), assert(parentesco(P, N)), familia).