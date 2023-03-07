SELECT 
	COUNT(musics.id_music) AS cancoes,
  COUNT(artists.id_artist) AS artistas,
  COUNT(albums.id_album) AS albuns
FROM
	SpotifyClone.musics AS musics
LEFT JOIN
	SpotifyClone.artists AS artists
ON
	musics.id_music = artists.id_artist
LEFT JOIN
	SpotifyClone.albums AS albums
ON
	musics.id_music = albums.id_album;