animal(joao, passaro).
animal(pedro, peixe).
animal(maria, minhoca).
gosta(passaro, minhoca).
gosta(gato, peixe).
gosta(gato, passaro).
gosta(amigo, amigo).
gato_eh_amigo(gato, dono).

come(gato, X) :- gosta(gato, X), X \= pessoa.
nome_do_gato(chuck_norris).