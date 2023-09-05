-- 1
SELECT
	Nome,
	Ano
FROM Filmes

-- 2

SELECT
	Nome,
	Ano
FROM Filmes ORDER BY Ano ASC

-- 3

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes WHERE Nome = 'De Volta Para o Futuro'

-- 4

SELECT
	*
FROM Filmes WHERE Ano = 1997

-- 5

SELECT
	*
FROM Filmes WHERE Ano > 2000

´-- 6

SELECT
	*
FROM Filmes WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

-- 7

SELECT
	Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8

SELECT
	*
FROM Atores WHERE Genero = 'M'

-- 9

SELECT
	*
FROM Atores WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC

-- 10

SELECT Filmes.nome AS NomeFilme, Generos.genero AS Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.id;

-- 11

SELECT Filmes.nome AS NomeFilme, Generos.genero AS Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.id
WHERE Generos.genero = 'Mistério';

-- 12

SELECT F.nome AS NomeFilme, 
       A.PrimeiroNome AS PrimeiroNomeAtor, 
       A.UltimoNome AS UltimoNomeAtor, 
       A.Genero AS GeneroAtor,
       EF.Papel AS Papel
FROM Filmes AS F
INNER JOIN ElencoFilme AS EF ON F.id = EF.IdFilme
INNER JOIN Atores AS A ON EF.IdAtor = A.id;


