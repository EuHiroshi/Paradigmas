% a) 
adiciona(X, L1, [X|L1]).

% b) 
remover(X, L1, L2) :- delete(L1, X, L2).

% c) 
inverte([], []).
inverte([H|T], L2) :- inverte(T, T1), append(T1, [H], L2).

% d) 
tamanho([], 0).
tamanho([_|T], X) :- tamanho(T, X1), X is X1 + 1.

% e) 
soma([], 0).
soma([H|T], X) :- soma(T, X1), X is X1 + H.
