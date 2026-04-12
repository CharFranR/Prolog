:- use_module(library(pce)).

datos_personales :-
    new(Ventana, dialog('Datos Personales')),
    
    % Crear campos de texto para los datos
    new(Nombres, text_item('Nombres')),
    new(Apellidos, text_item('Apellidos')),
    new(Edad, int_item('Edad')),
    new(Carrera, text_item('Carrera')),
    new(AnioEgreso, int_item('Anio de Egreso')),
    
    % Anadir elementos a la ventana
    send(Ventana, append(Nombres)),
    send(Ventana, append(Apellidos)),
    send(Ventana, append(Edad)),
    send(Ventana, append(Carrera)),
    send(Ventana, append(AnioEgreso)),
    
    % Boton Mostrar Datos - pasar las referencias de los items
    send(Ventana, append(button('Mostrar Datos',
        message(@prolog, mostrar_datos, Nombres, Apellidos, Edad, Carrera, AnioEgreso)))),
    
    % Boton Salir
    send(Ventana, append(button('Salir',
        message(Ventana, destroy)))),
    
    % Abrir la ventana
    send(Ventana, open).

% Capturar los valores de cada item y mostrarlos en consola
mostrar_datos(N, A, E, C, Anio) :-
    get(N, selection, Nombres),
    get(A, selection, Apellidos),
    get(E, selection, Edad),
    get(C, selection, Carrera),
    get(Anio, selection, AnioEgreso),
    nl,
    writeln('=== DATOS PERSONALES ==='),
    writeln('------------------------'),
    write('Nombres: '), writeln(Nombres),
    write('Apellidos: '), writeln(Apellidos),
    write('Edad: '), writeln(Edad),
    write('Carrera: '), writeln(Carrera),
    write('Anio de Egreso: '), writeln(AnioEgreso),
    writeln('------------------------'),
    nl.
