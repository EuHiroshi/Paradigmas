nota(joao,5.0).
nota(maria,6.0).
nota(joana,8.0).
nota(mariana,9.0).
nota(cleuza,8.5).
nota(jose,6.5).
nota(jaoquim,4.5).
nota(mara,4.0).
nota(mary,10.0).

Considerando que:
Nota de 7.0 á 10.0 = Aprovado.
Nota de 5.0 á 6.9 = Recuperação.
Nota de 0.0 á 4.9 = Reprovado.

Escreva uma regra para identificar a situação de um determinado aluno.

situacao_aluno(Y, X) :- % Y = aluno, X = situação
    nota(Y, H), % H = nota
    (H >= 7.0 -> X = 'Aprovado';
     H >= 5.0, H < 7.0 -> X = 'Recuperacao';
     H >= 0.0, H < 5.0 -> X = 'Reprovado').