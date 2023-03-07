DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.costs(
	id_costs INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	plano VARCHAR(50),
	valor_plano DECIMAL(5,2)
) engine = InnoDB;

INSERT INTO SpotifyClone.costs (id_costs, plano, valor_plano) VALUES
	('1', 'gratuito', 0),
  ('2', 'familiar', 7.99),
  ('3', 'universitário', 5.99),
  ('4', 'pessoal', 6.99);

CREATE TABLE SpotifyClone.user(
	pessoa_usuaria_id	INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome_pessoa_usuaria	VARCHAR(50) NOT NULL,
	idade INT NOT NULL,
	data_assinatura	VARCHAR(50) NOT NULL,
	id_costs INT NOT NULL,
	FOREIGN KEY (id_costs) REFERENCES costs (id_costs)
) engine = InnoDB;

INSERT INTO SpotifyClone.user (pessoa_usuaria_id, nome_pessoa_usuaria, idade, data_assinatura, id_costs) VALUES
	('1', 'Barbara Liskov', '82', '2019-10-20', '1'),
	('2', 'Robert Cecil Martin', '58', '2017-01-06', '1'),
	('3', 'Ada Lovelace', '37', '2017-12-30', '2'),
	('4', 'Martin Fowler', '46', '2017-01-17', '2'),
	('5', 'Sandi Metz', '58', '2018-04-29', '2'),
	('6', 'Paulo Freire', '19', '2018-02-14', '3'),
	('7', 'Bell Hooks', '26', '2018-01-05', '3'),
	('8', 'Christopher Alexander', '85', '2019-06-05', '4'),
	('9', 'Judith Butler', '45', '2020-05-13', '4'),
	('10', 'Jorge Amado', '58', '2017-02-17', '4');
    
CREATE TABLE SpotifyClone.artists(
	id_artist INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	artist VARCHAR(50) NOT NULL
) engine = InnoDB;

INSERT INTO SpotifyClone.artists (id_artist, artist) VALUES
	('1', 'Beyoncé'),
	('2', 'Queen'),
	('3', 'Elis Regina'),
	('4', 'Baco Exu do Blues'),
	('5', 'Blind Guardian'),
	('6', 'Nina Simone');
    
CREATE TABLE SpotifyClone.albums(
	id_album INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	album VARCHAR(50),
	ano_lancamento YEAR NOT NULL,
  id_artist INT NOT NULL,
	FOREIGN KEY (id_artist) REFERENCES artists (id_artist)
) engine = InnoDB;

INSERT INTO SpotifyClone.albums (id_album, album, ano_lancamento, id_artist) VALUES
  ('1', 'Renaissance', '2022', '1'),
  ('2', 'Jazz', '1978', '2'),
  ('3', 'Hot Space', '1982', '2'),
  ('4', 'Falso Brilhante', '1998', '3'),
  ('5', 'Vento de Maio', '2001', '3'),
  ('6', 'QVVJFA?', '2003', '4'),
	('7', 'Somewhere Far Beyond', '2007', '5'),
  ('8', 'I Put A Spell On You', '2012', '6');
    
CREATE TABLE SpotifyClone.musics(
	id_music INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	music VARCHAR(50) NOT NULL, 
	duracao_segundos INT NOT NULL,
	id_artist INT NOT NULL,
  id_album INT NOT NULL,
	FOREIGN KEY (id_artist) REFERENCES artists (id_artist),
	FOREIGN KEY (id_album) REFERENCES albums (id_album)
) engine = InnoDB;

INSERT INTO SpotifyClone.musics (id_music, music, duracao_segundos, id_artist, id_album) VALUES
	('1', "BREAK MY SOUL", '279', '1', '1'),
	('2', "VIRGO\'S GROOVE", '369', '1', '1'),
	('3', "ALIEN SUPERSTAR", '116', '1', '1'),
	('4', "Don\'t Stop Me Now", '203', '2', '2'),
	('5', "Under Pressure", '152', '2', '3'),
	('6', "Como Nossos Pais", '105', '3', '4'),
	('7', "O Medo de Amar é o Medo de Ser Livre", '207', '3', '5'),
	('8', "Samba em Paris", '267', '4', '6'),
	('9', "The Bard\'s Song", '244', '5', '7'),
	('10', "Feeling Good", '100', '6', '8');

    
CREATE TABLE SpotifyClone.historic(
	pessoa_usuaria_id INT NOT NULL,
	id_music INT NOT NULL,
	data_reproducao DATETIME NOT NULL,
  PRIMARY KEY (pessoa_usuaria_id, id_music),
	FOREIGN KEY (id_music) REFERENCES musics (id_music),
	FOREIGN KEY (pessoa_usuaria_id) REFERENCES user (pessoa_usuaria_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.historic (id_music, pessoa_usuaria_id , data_reproducao) VALUES
	('8', '1', '2022-02-28 10:45:55'),
  ('2', '1', '2020-05-02 05:30:35'),
  ('10', '1', '2020-03-06 11:22:33'),
  ('10', '2', '2022-08-05 08:05:17'),
  ('7', '2', '2020-01-02 07:40:33'),
  ('10', '3', '2020-11-13 16:55:13'),
  ('2', '3', '2020-12-05 18:38:30'),
  ('8', '4', '2021-08-15 17:10:10'),
  ('8', '5', '2022-01-09 01:44:33'),
  ('5', '5', '2020-08-06 15:23:43'),
  ('7', '6', '2017-01-24 00:31:17'),
  ('1', '6', '2017-10-12 12:35:20'),
  ('4', '7', '2011-12-15 22:30:49'),
  ('4', '8', '2012-03-17 14:56:41'),
  ('9', '9', '2022-02-24 21:14:22'),
  ('3', '10', '2015-12-13 08:30:22');
    
CREATE TABLE SpotifyClone.followers(
  pessoa_usuaria_id INT NOT NULL,
  id_artist INT NOT NULL,
  PRIMARY KEY (pessoa_usuaria_id, id_artist),
	FOREIGN KEY (id_artist) REFERENCES artists (id_artist),
	FOREIGN KEY (pessoa_usuaria_id) REFERENCES user (pessoa_usuaria_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.followers (pessoa_usuaria_id, id_artist) VALUES
  ('1', '1'),
	('1', '2'),
  ('1', '3'),
  ('2', '1'),
  ('2', '3'),
  ('3', '2'),
  ('4', '4'),
  ('5', '5'),
  ('5', '6'),
  ('6', '6'),
  ('6', '1'),
  ('7', '6'),
  ('9', '3'),
  ('10', '2');    

SELECT * FROM SpotifyClone.followers;