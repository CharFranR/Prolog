% Sistema de Becas, define 5 estudiantes con sus promedios, si el promedio es mayor a 80 el estudiante es apto para solicitar una beca

estudiante(oscar,91).
estudiante(donEducado,76).
estudiante(terminator,101).
estudiante(donRossman,0).
estudiante(donBembur,88).

es_apto_para_beca(X) :-
    estudiante(X,Nota),
    (
        Nota >= 80 ->
        write('Puede optar a una beca') ;
        write('No puede optar a una beca')
    ).