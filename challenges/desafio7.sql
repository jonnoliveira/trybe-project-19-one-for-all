SELECT
	artist.artist AS artista,
  albums.album,
  COUNT(followers.id_artist) AS pessoas_seguidoras
FROM
	SpotifyClone.artists AS artist
INNER JOIN
	SpotifyClone.albums AS albums
ON
	artist.id_artist = albums.id_artist
INNER JOIN
	SpotifyClone.followers AS followers
ON
	followers.id_artist = artist.id_artist
GROUP BY
	artist, album
ORDER BY
	pessoas_seguidoras DESC, artista, album;