aluno(joao, calculo). 
aluno(maria, calculo).
aluno(joel, programacao). 
aluno(joel, estrutura).
frequenta(joao, puc). 
frequenta(maria, puc).
frequenta(joel, ufrj). 
professor(carlos, calculo). 
professor(ana_paula, estrutura).
professor(pedro, programacao). 
funcionario(pedro, ufrj). 
funcionario(ana_paula, puc).
funcionario(carlos, puc). 


% A- Alunos do professor X
alunosProfessor(X, Y):- % x = professor, y = alunos
  professor(X, H), % h = materia
  aluno(Y, H).


% B- Pessoas associadas a uma universidade X
pessoas_da_universidade(X, Y) :- % x = universidade, y = pessoas
    (frequenta(Y, X) ; funcionario(Y, X)).