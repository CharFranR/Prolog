% Validacion de credenciales, crear regla login que solicite usuario y pin, el acceso debe ser exitoso solo si el usuario es admin y el pin es 1234 o si el usuario es invitado y el pin es 0000. Se debe usar repeat.



login :-

    repeat,
    write('Ingrese el usuario: '), read(User),
    write('Ingrese la contraseña'), read(Password),


    (
        ((User == admin, Password == 1234); (User == invitado, Password == 0000)),  
        write('Usuario Autenticado, puede acceder al sistema'), !;
        write('Los datos no coinciden con ningun usuario'), nl, false
    ).

