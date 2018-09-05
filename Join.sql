select nome, cursopreferido from gafanhotos ;


select gafanhotos.nome, cursos.nome, cursos.ano
from gafanhotos right join cursos
on cursos.idcurso = gafanhotos.cursopreferido
order by gafanhotos.nome;