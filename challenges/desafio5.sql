SELECT 
	musics.music AS cancao,
  COUNT(historic.id_music) AS reproducoes
FROM
	SpotifyClone.musics AS musics
INNER JOIN
	SpotifyClone.historic AS historic
ON
	musics.id_music = historic.id_music
GROUP BY
	historic.id_music
ORDER BY
	COUNT(historic.id_music) DESC, musics.music 
LIMIT
	2;