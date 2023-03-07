SELECT
	user.nome_pessoa_usuaria AS pessoa_usuaria,
	IF(MAX(YEAR(historic.data_reproducao)) >= 2021, 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM
	 SpotifyClone.user AS user 
INNER JOIN
   SpotifyClone.historic AS historic
ON
	user.pessoa_usuaria_id = historic.pessoa_usuaria_id
GROUP BY
	user.nome_pessoa_usuaria
ORDER BY
	user.nome_pessoa_usuaria;