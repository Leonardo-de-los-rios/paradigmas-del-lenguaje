medico(m1,rosales).
medico(m2,manni).
paciente(p1,juan).
paciente(p2,ana).
atiende(m1,p1).
atiende(m1,p2).
atiende(m2,p2).

% Men� de Opciones.
base:- writeln("1) Dado un m�dico, listar los pacientes que atiende."),
    writeln("2) Dado un paciente, listar los m�dicos que lo atienden."),
    writeln("3) Terminar."),
    writeln("Ingrese una opci�n: "),
    readln(O), opcion(O).

% Opciones
opcion(O):- O=[1], write("Ingrese el nombre del M�DICO: "), readln(M), buscar_pacientes(M), base.
opcion(O):- O=[2], write("Ingrese el nombre del PACIENTE: "), readln(P), buscar_medicos(P), base.
opcion(O):- O=[3], write("Adi�s de Gustavo Cerati.").
opcion(O):- O\=[1], O\=[2], O\=[3], writeln("Opci�n Incorrecta. Vuelva a intentarlo."), base.
buscar_pacientes([M|_]):- medico(M1,M), atiende(M1,P1), paciente(P1,P), writeln(P), fail.
buscar_pacientes(_).
buscar_medicos([P|_]):- paciente(P1,P), atiende(M1,P1), medico(M1,M), writeln(M), fail.
buscar_medicos(_).
