SELECT
	user.nome_pessoa_usuaria AS pessoa_usuaria,
  COUNT(historic.id_music) AS musicas_ouvidas,
	ROUND(SUM(musics.duracao_segundos / 60), 2) AS total_minutos
FROM 
	SpotifyClone.user AS user
INNER JOIN
	SpotifyClone.historic AS historic
ON
	user.pessoa_usuaria_id = historic.pessoa_usuaria_id
INNER JOIN
	SpotifyClone.musics AS musics
ON
	historic.id_music = musics.id_music
GROUP BY
	historic.pessoa_usuaria_id
ORDER BY
	user.nome_pessoa_usuaria;
