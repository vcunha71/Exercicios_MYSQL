use cadastro;

#Ex1
select profissao,count(*) from gafanhotos group by profissao
order by count(profissao);

#Ex2
select sexo, count(*) from gafanhotos
where nascimento > '2005-01-01'
group by sexo;

#Ex3
SELECT 
    nacionalidade, count(*)
FROM
    gafanhotos
WHERE
    nacionalidade != 'Brasil'
GROUP BY nacionalidade
HAVING COUNT(nacionalidade) > 3;


select nacionalidade, count(*) from gafanhotos
where nacionalidade <> 'Brasil'
group by nacionalidade;

#Ex 4
select avg(altura) from gafanhotos;


select nome ,altura, peso, count(*) from gafanhotos
where peso > '100'
group by altura
having altura > (select avg(altura) from gafanhotos);