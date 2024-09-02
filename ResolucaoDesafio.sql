--1 - Buscar o nome e ano dos filmes
--Exercicio 1
SELECT Nome, Ano FROM Filmes


--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
--Exercicio 2
SELECT 
	Nome,
	Ano
FROM Filmes
ORDER BY Ano


--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
--Exercicio 3
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Id = 28

--4 - Buscar os filmes lançados em 1997
--Exercicio 4

SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997

--5 - Buscar os filmes lançados APÓS o ano 2000
--Exercicio 5
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
--Exercicio 6
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE DURACAO > 100 AND DURACAO < 150
ORDER BY Duracao

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
--Exercicio 7

SELECT 
    Ano,
    COUNT(*) AS QuantidadeDeFilmes,
    MAX(Duracao) AS Duracao
FROM 
    Filmes
GROUP BY 
    Ano
ORDER BY 
    Duracao DESC;



--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
--Exercicio 8

SELECT 
	PrimeiroNome,
	UltimoNome
FROM Atores
WHERE Genero = 'M'

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
--Exercicio 9
SELECT 
	PrimeiroNome,
	UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10 - Buscar o nome do filme e o gênero
--Exercicio 10

SELECT 
	Nome,
	generos.Genero
FROM Filmes filmes
LEFT JOIN FilmesGenero filmeGenero on filmeGenero.IdFilme = filmes.Id
LEFT JOIN Generos generos on filmeGenero.IdGenero = generos.Id


--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
--Exercicio 11
SELECT 
	Nome
FROM Filmes filmes
LEFT JOIN FilmesGenero filmeGenero on filmeGenero.IdFilme = filmes.Id
WHERE filmeGenero.IdGenero = 10

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT
	ElencoFilme.Papel,
	Filmes.Nome AS NomeFilme,
	Atores.PrimeiroNome,
	Atores.UltimoNome
FROM ElencoFilme
JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id
JOIN Atores ON ElencoFilme.IdAtor = Atores.Id