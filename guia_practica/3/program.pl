:- dynamic nota_prolog/2.

ejercicio3 :-
    retractall(nota_prolog(_,_)),
    assert(nota_prolog(acumulado, 10)),
    write('Ingrese 4 notas de acumulado:'), nl,
    leer_4_notas(4),
    write('Nota examen (0-30): '), read(E),
    assert(nota_prolog(examen, E)),
    listing(nota_prolog),
    eliminar_tercera_nota,
    write('Nueva nota examen: '), read(NE),
    retract(nota_prolog(examen, _)),
    assert(nota_prolog(examen, NE)),
    listing(nota_prolog).

leer_4_notas(0).
leer_4_notas(N) :-
    N > 0,
    read(V),
    assert(nota_prolog(acumulado, V)),
    N1 is N - 1,
    leer_4_notas(N1).

eliminar_tercera_nota :-
    nota_prolog(acumulado, N1),
    nota_prolog(acumulado, N2),
    nota_prolog(acumulado, N3),
    retract(nota_prolog(acumulado, N3)),
    write('Eliminada tercera nota: '), write(N3), nl.