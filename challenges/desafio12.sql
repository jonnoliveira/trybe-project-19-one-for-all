SELECT
    artists.artist AS artista,
	CASE
		WHEN COUNT(fav.id_music) >= 5 THEN 'A'
    WHEN COUNT(fav.id_music) >= 3 THEN 'B'
    WHEN COUNT(fav.id_music)  >= 1 THEN 'C'
    ELSE '-'
	END AS ranking
FROM
	SpotifyClone.artists AS artists
INNER JOIN
	SpotifyClone.musics AS musics
ON
	artists.id_artist = musics.id_artist
LEFT JOIN
	SpotifyClone.favSongs AS fav
ON
	musics.id_music = fav.id_music
GROUP BY
	artista
ORDER BY
	COUNT(fav.id_music) DESC, artista;