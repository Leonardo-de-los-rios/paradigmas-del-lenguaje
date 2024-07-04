materia(algoritmo, 1, 1).
materia(matematica, 1, 1).
materia(sistema, 1, 2).

docente(mario, algoritmo).
docente(lucia, matematica).
docente(juan, sistema).

% 1) Qué materias se dictan en el 2c?
materiaSC(X):- materia(X, _, 2).

% 2) Qué docentes trab en 1 año?
docPA(X):- docente(X, Y), materia(Y, 1, _).

% 3) Qué docente trab en el 1 c?
docPC(X):- docente(X, Y), materia(Y, _, 1).

% 4) Quien dicta sistema?
docSistema(X):- docente(X, sistema).

% 5) Qué materia dicta Lucia?
materiaL(X):- docente(lucia, X).