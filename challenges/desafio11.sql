SELECT
    albums.album AS album,
	COUNT(fav.id_music) AS favoritadas
FROM
	SpotifyClone.albums AS albums
INNER JOIN
	SpotifyClone.musics AS musics
ON
	albums.id_album = musics.id_album 
INNER JOIN
	SpotifyClone.favSongs AS fav
ON
	musics.id_music = fav.id_music
GROUP BY
	album
ORDER BY
	favoritadas DESC, album
LIMIT
	3;