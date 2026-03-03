% Inventario de ferreteria, 10 productos con su nombre, cantidad, precio y una regla que indique si se necesaria reestablecer inventrio de un producto si su cantidad es menos a 20 unidades

producto(clavos,100,1).
producto(martillo,11,50).
producto(destornillador,4,20).
producto(sierra,25,30).
producto(taladro,15,100).
producto(cinta_metrica,30,10).
producto(lijadora,5,80).
producto(serrucho,18,25).
producto(alicate,22,15).
producto(cinta_aislante,8,5).

necesita_reabastecimiento(X):- producto(X, C, _), (C =< 20 -> write("Se necesita reestablecer inventario") ;  write("No se necesita reestablecer inventario")).


