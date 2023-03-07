SELECT
	artists.artist AS artista,
  albums.album
FROM
	SpotifyClone.artists AS artists
INNER JOIN
	SpotifyClone.albums AS albums
ON
	artists.id_artist = albums.id_artist
WHERE
	artists.artist = "Elis Regina";