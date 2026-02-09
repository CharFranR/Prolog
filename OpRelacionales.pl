menores(R):- R>0 , R=<18.
jovenes(R):- R>18 , R=<25.
adultos(R):- R>25 , R=<50.


convertidor:-write('Ingrese una temp. en Celcius'), read(C), F is (C*9/5)+32, write('La temp. en Farenheit es: '), write(F).

minimo(X,Y,X):- X=<Y.
minimo(X,Y,X):- Y=<X.