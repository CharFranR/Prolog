% Dada 3 lecturas de temperatura se calcula el promedio, si la temperatura es mayor a 35°c se debe mostar Calor Intenso, si esta entre 20 y 35 se debe mostar Clima Agradable y si es menor se debe mostrar Frente Frio



clima() :- 
    write('Ingrese lectura 1:'), read(L1),
    write('Ingrese lectura 2:'), read(L2),
    write('Ingrese lectura 3:'), read(L3),

    P is (L1 + L2 + L3) / 3,

    write("La temp. promedio es: "), write(P), nl,

    (
        P > 35 -> write('Calor Intenso') ;
        (P =< 35, P >= 20)-> write('Clima Agradable') ;
        write('Frente Frio')
    ).

