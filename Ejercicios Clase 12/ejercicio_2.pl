:- use_module(library(pce)).

sumar_acumulados :-
    new(Ventana, dialog('Suma de Acumulados')),
    
    new(Acum1, int_item('Acumulado 1')),
    new(Acum2, int_item('Acumulado 2')),
    new(Acum3, int_item('Acumulado 3')),
    new(Acum4, int_item('Acumulado 4')),
    new(Acum5, int_item('Acumulado 5')),
    
    new(Total, text_item('Total')),
    
    send(Ventana, append(Acum1)),
    send(Ventana, append(Acum2)),
    send(Ventana, append(Acum3)),
    send(Ventana, append(Acum4)),
    send(Ventana, append(Acum5)),
    send(Ventana, append(Total)),
    
    send(Ventana, append(button('Calcular Total',
        message(@prolog, calcular_suma, Acum1, Acum2, Acum3, Acum4, Acum5, Total)))),
    
    send(Ventana, append(button('Salir',
        message(Ventana, destroy)))),
    
    send(Ventana, open).

calcular_suma(A1, A2, A3, A4, A5, Total) :-
    get(A1, selection, V1),
    get(A2, selection, V2),
    get(A3, selection, V3),
    get(A4, selection, V4),
    get(A5, selection, V5),
    Suma is V1 + V2 + V3 + V4 + V5,
    send(Total, selection, Suma),
    nl,
    writeln('El total de los acumulados es: '),
    writeln(Suma).
