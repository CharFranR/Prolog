% Crea un programa recursivo de la ubicación de carpetas y archivos de su disco C, de esta representación.

ubicado_en(sub_folder_1, folder).
ubicado_en(sub_folder_2, folder).
ubicado_en(sub_folder_3, folder).

ubicado_en(file_1_a, sub_folder_1).
ubicado_en(file_2_a, sub_folder_2).
ubicado_en(file_2_b, sub_folder_2).
ubicado_en(file_3_a, sub_folder_3).

ubicado_en(file_2_a_1, file_2_a).
ubicado_en(file_2_a_2, file_2_a).

ubicado_en(file_2_b_1, file_2_b).
ubicado_en(file_2_b_2, file_2_b).

ruta(Elemento, Padre) :- ubicado_en(Elemento,Padre).

ruta(Elemento, Ancestro) :- ubicado_en(Elemento, Intermedio), ruta(Intermedio, Ancestro).
