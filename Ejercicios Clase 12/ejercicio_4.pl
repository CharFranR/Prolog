:- use_module(library(pce)).

valorar_nota :-
    new(Ventana, dialog('Valorar Nota')),
    
    new(Nota, int_item('Ingrese la nota')),
    
    send(Ventana, append(Nota)),
    
    send(Ventana, append(button('Evaluar',
        message(@prolog, evaluar_nota, Nota)))),
    
    send(Ventana, append(button('Salir',
        message(Ventana, destroy)))),
    
    send(Ventana, open).

evaluar_nota(NotaItem) :-
    get(NotaItem, selection, Nota),
    
    ( Nota >= 70 ->
        Mensaje = 'Aprobado'
    ;
        Mensaje = 'Reprobado'
    ),
    
    new(Resultado, dialog('Resultado')),
    send(Resultado, append(label(msg, Mensaje))),
    send(Resultado, append(button('Cerrar',
        message(Resultado, destroy)))),
    
    send(Resultado, open).