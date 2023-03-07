SELECT
	COUNT(historic.id_music) AS musicas_no_historico
FROM 
	SpotifyClone.historic AS historic
INNER JOIN
	SpotifyClone.user AS user
ON
	historic.pessoa_usuaria_id = user.pessoa_usuaria_id
WHERE
	user.nome_pessoa_usuaria = 'Barbara Liskov';