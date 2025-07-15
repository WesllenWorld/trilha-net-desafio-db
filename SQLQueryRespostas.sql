--Q1 
SELECT Nome, Ano FROM Filmes 

--Q2
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano ASC

--Q3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome='De Volta para o Futuro'

--Q4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano='1997'

--Q5
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano>'2000'

--Q6
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao>'100' AND Duracao<'150' ORDER BY Duracao ASC

--Q7
SELECT Ano, COUNT(Ano) AS [Quantidade] FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

--Q8
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero='M'

--Q9
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero='F' ORDER BY PrimeiroNome

--Q10
SELECT F.Nome, G.Genero FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero

--Q11
SELECT F.Nome, G.Genero FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero
WHERE G.Genero = 'Mistério'

--Q12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel FROM Filmes F
INNER JOIN ElencoFilme EF ON F.Id = EF.IdFilme
INNER JOIN Atores A ON A.Id = EF.IdAtor
