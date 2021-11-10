create table peliculas(
	id INT,
	Pelicula VARCHAR(200),
	anio_estreno VARCHAR(4),
	Director VARCHAR(50),
	PRIMARY KEY(id)
);

-- drop table reparto;
-- drop table peliculas;

create table reparto(
	id_reparto INT,
	actores VARCHAR(50),
	FOREIGN KEY(id_reparto) REFERENCES peliculas(id)
);

select peliculas.id from peliculas where peliculas.pelicula = 'Titanic';

select reparto.actores from reparto where reparto.id_reparto = 2;

select count(actores) as Total_Peliculas from reparto where reparto.actores = 'Harrison Ford';

select pelicula, anio_estreno from peliculas where anio_estreno between '1990' and '1999' order by pelicula asc;
-- SELECT pelicula, anio_estreno FROM peliculas  WHERE anio_estreno >= '1990' AND anio_estreno <= '1999' ORDER BY pelicula ASC;

select pelicula, length(pelicula) as longitud_titulo from peliculas;

select max(length(pelicula)) from peliculas;

select length(pelicula), pelicula from peliculas where length(pelicula) = (select max(length(pelicula)) from peliculas);

select * from peliculas;
select * from reparto;