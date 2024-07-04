encargado_de(miguel,[admisión,control,vigilancia]).
encargado_de(ricardo,[planificación,asesoramiento]).
encargado_de(alicia,[dirección,control]).

comparten_tarea(Persona1,Persona2):- encargado_de(Persona1,T1), encargado_de(Persona2,T2), Persona1\=Persona2, tarea_comun(T1,T2), write(Persona1), write(' tiene tareas en común con '), write(Persona2).

tarea_comun(T1,T2):- miembro(X,T1), miembro(X,T2), !.
miembro(X,[X|_]).
miembro(X,[_|Y]):- miembro(X,Y).


encontrar_pareja :- persona(P1, List1),persona(P2, List2),P1\=P2,interes_comun(List1, List2,_),write(P1),write(' está muy enamorado con '),write(P2), nl.
encontrar_pareja :- write("Fin de lista").
interes_comun(L1, L2, X) :- member(X, L1), member(X, L2), !.
persona(carlos, [viajar,libros,basquet]).
persona(maria, [viajar,libros,natacion]).
persona(juana, [estudiar,libros,tenis]).
member(X, [X|_]).
member(X, [_|L]) :- member(X,L).

