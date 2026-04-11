:- use_module(library(pce)).

datos_personales :-
    new(Ventana, dialog('Datos Personales')),
    
    new(Nombres, text_item('Nombres')),
    new(Apellidos, text_item('Apellidos')),
    new(Edad, int_item('Edad')),
    new(Carrera, text_item('Carrera')),
    new(AnioEgreso, int_item('Anio de Egreso')),
    
    send(Ventana, append(Nombres)),
    send(Ventana, append(Apellidos)),
    send(Ventana, append(Edad)),
    send(Ventana, append(Carrera)),
    send(Ventana, append(AnioEgreso)),
    send(Ventana, append(button('Mostrar Datos',
        message(@prolog, mostrar_datos)))),
    send(Ventana, append(button('Salir',
        message(Ventana, destroy)))),
    
    send(Ventana, open).

mostrar_datos :-
    nl,
    writeln('=== PRESIONASTE MOSTRAR DATOS ==='),
    writeln('Por favor llena los campos y presiona el boton.'),
    nl.
