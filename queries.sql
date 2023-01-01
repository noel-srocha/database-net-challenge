-- Query 1 --
SELECT Nome, Ano FROM Filmes

-- Query 2 --
SELECT Nome, Ano FROM Filmes
ORDER BY Ano ASC

-- Query 3 --
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome LIKE 'De Volta%'

-- Query 4 --
SELECT * FROM Filmes
WHERE Ano = 1997

-- Query 5 --
SELECT * FROM Filmes
WHERE Ano > 2000

-- Query 6 --
SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- Query 7 --
SELECT Ano, COUNT(*) Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- Query 8 --
SELECT * FROM Atores
WHERE Genero = 'M'

-- Query 9 --
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Query 10 --
SELECT f.Nome, g.Genero FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id

-- Query 11 --
SELECT f.Nome, g.Genero FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério'

-- Query 12 --
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel FROM Filmes f
INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme
INNER JOIN Atores a ON a.Id = ef.IdAtor