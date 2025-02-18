% Declarar que gusta/2 es un predicado din�mico
:- dynamic gusta/2.

% Definimos algunos hechos iniciales
persona(juan).
persona(maria).
persona(pedro).

gusta(juan, pizza).
gusta(maria, pasta).

% Regla para verificar si a una persona le gusta un tipo de comida
le_gusta_a(Persona, Comida) :-
    gusta(Persona, Comida).

% Regla para a�adir un nuevo hecho en tiempo de ejecuci�n
% Si una persona y una comida no est�n registradas, las a�ade
a�adir_gusto(Persona, Comida) :-
    \+ gusta(Persona, Comida), % Verifica que no exista ya el hecho
    assert(gusta(Persona, Comida)), % A�ade el nuevo hecho
    write('Hecho a�adido: '), write(Persona), write(' gusta '), writeln(Comida).

% Si ya existe el hecho, simplemente informa de ello
a�adir_gusto(Persona, Comida) :-
    gusta(Persona, Comida),
    write(Persona), write(' ya gusta '), writeln(Comida).
