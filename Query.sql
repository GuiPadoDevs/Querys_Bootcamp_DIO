-- 1)
select nome, ano from Filmes

-- 2)
select nome, ano, duracao from Filmes
order by ano

-- 3)
select nome, ano, duracao from Filmes
where nome = 'De Volta para o Futuro'

-- 4
select nome, ano, duracao from Filmes
where ano = '1997'

-- 5
select nome, ano, duracao from Filmes
where ano > '2000'

-- 6
select nome, ano, duracao from Filmes
where duracao > '100' and duracao < '150'
order by duracao

-- 7
select ano, COUNT(*) AS quantidade from filmes
group by ano
order by quantidade desc

-- 8
select PrimeiroNome, UltimoNome from Atores
where Genero = 'M'

-- 9
select PrimeiroNome, UltimoNome from Atores
where Genero = 'F'
order by PrimeiroNome

-- 10
select f.Nome, g.Genero from FilmesGenero fg
inner join Filmes f on fg.IdFilme = f.Id
inner join Generos g on fg.IdGenero = g.Id

-- 11
select f.Nome, g.Genero from FilmesGenero fg
inner join Filmes f on fg.IdFilme = f.Id
inner join Generos g on fg.IdGenero = g.Id
where g.Genero = 'Mistério'

-- 12
select f.Nome, a.PrimeiroNome, a.UltimoNome, Papel from ElencoFilme ef
inner join Filmes f on ef.IdFilme = f.Id
inner join Atores a on ef.IdAtor = a.Id
