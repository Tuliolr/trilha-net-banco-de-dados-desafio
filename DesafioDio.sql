-- 1  Buscar o nome e ano dos filmes
-- SELECT Nome, ano FROM Filmes

-- 2 Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
-- SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano;

-- 3 Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
-- SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';

-- 4 Buscar os filmes lan�ados em 1997
-- SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano= 1997;

-- 5 Buscar os filmes lan�ados AP�S o ano 2000
-- SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000;

-- 6 Buscar os filmes com a dura��o maior que 100 e menor que 150, ordenando pela dura��o em ordem crescente
-- SELECT Nome, Ano, Duracao  FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC;

-- 7 Buscar a quantidade de filmes lan�ados no ano, agrupando por ano, ordenando pela dura��o em ordem decrescente
-- SELECT Ano, COUNT(Id) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC;

-- 8 Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
-- SELECT id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M';

-- 9 Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
-- SELECT id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome ASC;

-- 10 Buscar o nome do filme e o g�nero
-- SELECT F.Nome AS NomeFilme, G.Genero AS NomeGenero FROM Filmes AS F INNER JOIN FilmesGenero AS FG ON F.Id = FG.IdFilme INNER JOIN Generos AS G ON FG.IdGenero = G.Id;

-- 11 Buscar o nome do filme e o g�nero do tipo "Mist�rio"
-- SELECT F.Nome AS Nome, G.Genero AS Genero FROM Filmes AS F INNER JOIN FilmesGenero AS FG ON F.Id = FG.IdFilme INNER JOIN Generos AS G ON FG.IdGenero = G.Id WHERE G.Genero = 'Mist�rio';

-- 12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
-- SELECT F.Nome AS NomeFilme, A.PrimeiroNome, A.UltimoNome, EF.Papel FROM Filmes AS F INNER JOIN ElencoFilme AS EF ON F.Id = EF.IdFilme INNER JOIN Atores AS A ON EF.IdAtor = A.Id;