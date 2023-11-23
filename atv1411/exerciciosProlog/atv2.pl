bonita(cassia).
rico(marcos).
bonito(marcos).
rica(ana).
forte(ana).
forte(fabiano).
bonito(fabiano).
amavel(silvio).

gosta(X, Y) :- bonita(Y), homem_gosta_mulher(X, Y).
gosta(Y, X) :- homem_gosta_mulher(X, Y).

homem_gosta_mulher(X, Y) :-
    gosta(Y, X),
    feliz(X).

mulher_gosta_homem(Y, X) :-
    gosta(X, Y),
    feliz(Y).

feliz(X) :- homem_gosta_mulher(X, _).
feliz(Y) :- mulher_gosta_homem(Y, _).

gosta(ana, X) :- homem_gosta_mulher(X, ana).
gosta(cassia, X) :- homem_gosta_mulher(X, cassia), (rico(X); amavel(X); bonito(X); forte(X)).
