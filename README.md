# PROJETO 19 - ONE FOR ALL :computer:

## Esse projeto pertence ao módulo de `back-end` da [Trybe](https://www.betrybe.com/) :green_heart:

### Stacks utilizadas no desenvolvimento:
<div style="display: inline_block"><br>
  <img src="https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white" alt="Docker Shield" />
  <img src="https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL Shield" />
</div>
 
 #
<details>
 
<summary>
  
## 1- Resumo
  
</summary>

Nesse projeto recebemos tabelas não normalizadas que deveríamos adequar para 1ª, 2ª e 3ª Formas Normais.

Posteriormente criamos o banco de dados semelhante ao do Spotfy com essas tabelas a fim de popula-lo e manipula-lo utilizando queries específicas para encontrar as informações desejadas.
  
</details>

#

<details>
 
<summary>
 
## 2- Requisitos

</summary>

* I. Normalize as tabelas da planilha SpotifyClone. Após a normalização, crie as tabelas no banco de dados
* II. Crie uma QUERY que exiba três colunas:

    `A primeira coluna deve exibir a quantidade total de canções. Dê a essa coluna o alias "cancoes".
    A segunda coluna deve exibir a quantidade total de artistas e deverá ter o alias "artistas".
    A terceira coluna deve exibir a quantidade de álbuns e deverá ter o alias "albuns".`

* III. Crie uma QUERY que deverá ter apenas três colunas:

    `A primeira coluna deve possuir o alias "pessoa_usuaria" e exibir o nome da pessoa usuária.
    A segunda coluna deve possuir o alias "musicas_ouvidas" e exibir a quantidade de músicas ouvida pela pessoa com base no seu histórico de reprodução.
    A terceira coluna deve possuir o alias "total_minutos" e exibir a soma dos minutos ouvidos pela pessoa usuária com base no seu histórico de reprodução.`

* IV. Crie uma QUERY que deve mostrar as pessoas usuárias que estavam ativas a partir do ano de 2021, se baseando na data mais recente no histórico de reprodução.

    `A primeira coluna deve possuir o alias "pessoa_usuaria" e exibir o nome da pessoa usuária.
    A segunda coluna deve ter o alias "status_pessoa_usuaria" e exibir se a pessoa usuária está ativa ou inativa.`

* V. Crie uma QUERY que possua duas colunas:

    `A primeira coluna deve possuir o alias "cancao" e exibir o nome da canção.
    A segunda coluna deve possuir o alias "reproducoes" e exibir a quantidade de pessoas que já escutaram a canção em questão.`

* VI. Crie uma QUERY que deve exibir quatro dados:

    `A primeira coluna deve ter o alias "faturamento_minimo" e exibir o menor valor de plano existente para uma pessoa usuária.
    A segunda coluna deve ter o alias "faturamento_maximo" e exibir o maior valor de plano existente para uma pessoa usuária.
    A terceira coluna deve ter o alias "faturamento_medio" e exibir o valor médio dos planos possuídos por pessoas usuárias até o momento.
    Por fim, a quarta coluna deve ter o alias "faturamento_total" e exibir o valor total obtido com os planos possuídos por pessoas usuárias.`

* VII. Crie uma QUERY com as seguintes colunas:

    `A primeira coluna deve exibir o nome da pessoa artista, com o alias "artista".
    A segunda coluna deve exibir o nome do álbum, com o alias "album".
    A terceira coluna deve exibir a quantidade de pessoas seguidoras que aquela pessoa artista possui e deve possuir o alias "pessoas_seguidoras".`

* VIII. Crie uma QUERY que o retorno deve exibir as seguintes colunas:

   `O nome da pessoa artista, com o alias "artista".
    O nome do álbum, com o alias "album".`

* IX. Crie uma QUERY que exibe a quantidade de músicas que estão presentes atualmente no histórico de reprodução de uma pessoa usuária específica. Para este caso queremos saber quantas músicas estão no histórico da usuária "Barbara Liskov" e a consulta deve retornar a seguinte coluna:

    `O valor da quantidade, com o alias "musicas_no_historico".`

* X. Normalize a tabela da planilha SpotifyClone-fav-songs. Após a normalização, crie a tabela no banco de dados.
* XI. Crie uma QUERY que exibe o top 3 de álbuns com as músicas que mais foram favoritadas.

O resultado deve possuir duas colunas:

    album: O nome do álbum
    favoritadas: Quantas vezes as músicas do álbum foram favoritadas`

* XII. Crie uma QUERY que exibe um ranking de artistas baseado na quantidade de favoritadas em suas músicas.

O resultado deve possuir duas colunas:

    artista: O nome da pessoa artista
    ranking: Uma classificação definida pela quantidade de favoritadas as canções da pessoa artista receberam`

* XIII. Crie uma QUERY que exibe uma relação da quantidade total de pessoas usuárias e favoritadas por faixa etária.

</details>

# 

<details>
 
<summary>

## 3- Nota do Projeto
 
</summary>

## 100% :heavy_check_mark:

![Project-all-for-one](https://github.com/jonnoliveira/trybe-project-18-all-for-one/blob/main/images/all-for-one-grade.png)

</details> 
 
# 
