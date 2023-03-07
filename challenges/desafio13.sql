SELECT
	CASE
		WHEN user.idade <=  30 THEN 'Até 30 anos'
    WHEN user.idade <= 60 THEN 'Entre 31 e 60 anos'
    ELSE 'Maior de 60 anos'
	END AS faixa_etaria,
    COUNT(DISTINCT user.pessoa_usuaria_id) AS total_pessoas_usuarias,
    COUNT(fav.pessoa_usuaria_id) AS total_favoritadas
FROM
	SpotifyClone.user AS user
LEFT JOIN
	SpotifyClone.favSongs AS fav
ON
	user.pessoa_usuaria_id = fav.pessoa_usuaria_id
GROUP BY
	faixa_etaria
ORDER BY
	faixa_etaria;