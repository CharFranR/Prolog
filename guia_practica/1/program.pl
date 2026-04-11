% 1. Punto de entrada interactivo
crear_archivo_datos :-
    % Captura de datos desde el teclado
    write('Ingrese el nombre del Curso: '), read(Curso),
    write('Ingrese el nombre del Docente: '), read(Docente),
    write('Ingrese el nombre del Proyecto: '), read(Proyecto),
    write('Ingrese la Hora: '), read(Hora),
    write('Ingrese la Fecha: '), read(Fecha),

    % 2. Apertura de archivo y escritura (Uso de tell y told)
    tell('mis_datos.txt'),
    write('Curso: '), write(Curso), nl,
    write('Docente: '), write(Docente), nl,
    write('Proyecto: '), write(Proyecto), nl,
    write('Hora: '), write(Hora), nl,
    write('Fecha: '), write(Fecha), nl,
    told, % Cierra el flujo de escritura hacia el archivo 

    write('--- Datos guardados con exito ---'), nl,
    
    % 3. Lectura y visualización (Uso de see y seen)
    write('Contenido del archivo:'), nl,
    see('mis_datos.txt'), % Redirige la entrada desde el archivo 
    captura_fichero,      % Llama a tu función auxiliar
    seen,                 % Cierra el flujo de lectura 
    nl.

captura_fichero :- get0(X), ((X =\= -1, put(X), captura_fichero) X == -1).



