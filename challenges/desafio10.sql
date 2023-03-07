CREATE TABLE SpotifyClone.favSongs(
  pessoa_usuaria_id INT NOT NULL,
  id_music INT NOT NULL,
	PRIMARY KEY (pessoa_usuaria_id, id_music),
	FOREIGN KEY (pessoa_usuaria_id) REFERENCES user (pessoa_usuaria_id),
	FOREIGN KEY (id_music) REFERENCES musics (id_music)
) engine = InnoDB;

INSERT INTO SpotifyClone.favSongs (pessoa_usuaria_id, id_music) VALUES
	('1', '3'),
	('1', '6'),
	('1', '10'),
	('2', '4'),
	('3', '1'),
	('3', '3'),
	('4', '7'),
	('4', '4'),
	('5', '10'),
	('5', '2'),
	('8', '4'),
	('9', '7'),
	('10', '3');
