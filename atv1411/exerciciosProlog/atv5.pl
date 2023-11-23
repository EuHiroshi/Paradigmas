%  NOME | GENERO | DIRETOR | ANO | MIN
filme(amnésia, suspense, nolan, 2000, 113).
filme(babel, drama, inarritu, 2006, 142).
filme(capote, drama, miller, 2005, 98).
filme(casablanca, romance, curtiz, 1942, 102).
filme(matrix, ficcao, waschowsk, 1999, 136).
filme(rebecca, suspense, hitchcok, 1940, 130).
filme(shrek, aventura, adamson, 2001, 90).
filme(sinais, ficcao, shymalan, 2002, 106).
filme(spartacus, acao, kubrik, 1960, 184).
filme(superman, aventura, donner, 1978, 143).
filme(titanic, romance, cameron, 1997, 194).
filme(tubarao, suspense, spielberg, 1975, 124).
filme(volver, drama, almodovar, 2006, 121).

% 5.1
% A
dirigiu(X, Y) :- filme(Y, _, X, _, _).

% B
filmes_suspense(X) :- filme(X, suspense, _, _, _).

% C
filmes_dirigidos_por_donner(X) :- filme(X, _, donner, _, _).

% D
ano_lancamento(X, Y) :- filme(X, _, _, Y, _).

% E
duracao_inferior_100(X) :- filme(X, _, _, _, Z), Z < 100.

% F
filmes_entre_2000_2005(X) :- filme(X, _, _, Y, _), Y >= 2000, Y =< 2005.


% 5.2
classico(X) :- filme(X, _, _, Y, _), Y < 1980.

% 5.3
genero(X, Y) :- filme(X, Y, _, _, _), Y = Y.

% 5.4
classico_suspense(X) :- filme(X, Y, _, Z, _), Y = suspense, Z < 1980. 