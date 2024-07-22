medico(m1,rosales).
medico(m2,manni).
paciente(p1,juan).
paciente(p2,ana).
atiende(m1,p1).
atiende(m1,p2).
atiende(m2,p2).

% Menú de Opciones.
base:- writeln("1) Dado un médico, listar los pacientes que atiende."),
    writeln("2) Dado un paciente, listar los médicos que lo atienden."),
    writeln("3) Terminar."),
    writeln("Ingrese una opción: "),
    readln(O), opcion(O).

% Opciones
opcion(O):- O=[1], write("Ingrese el nombre del MÉDICO: "), readln(M), buscar_pacientes(M), base.
opcion(O):- O=[2], write("Ingrese el nombre del PACIENTE: "), readln(P), buscar_medicos(P), base.
opcion(O):- O=[3], write("Adiós de Gustavo Cerati.").
opcion(O):- O\=[1], O\=[2], O\=[3], writeln("Opción Incorrecta. Vuelva a intentarlo."), base.
buscar_pacientes([M|_]):- medico(M1,M), atiende(M1,P1), paciente(P1,P), writeln(P), fail.
buscar_pacientes(_).
buscar_medicos([P|_]):- paciente(P1,P), atiende(M1,P1), medico(M1,M), writeln(M), fail.
buscar_medicos(_).
