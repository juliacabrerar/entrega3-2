DROP DATABASE IF EXISTS Campeonato;
CREATE DATABASE Campeonato;
USE Campeonato;
CREATE TABLE Jugadores(
           ID_j INTEGER PRIMARY KEY NOT NULL,
           Nombre TEXT NOT NULL,
        Contrasenya INTEGER NOT NULL
)ENGINE = InnoDB;
 
CREATE TABLE Partidas(
           ID_p INTEGER PRIMARY KEY NOT NULL,
           Fecha INTEGER NOT NULL,
        Hora INTEGER NOT NULL,
        Duracion INTEGER NOT NULL,
        Ganador TEXT NOT NULL
)ENGINE = InnoDB;
 
CREATE TABLE Ranking(
           Jugador INTEGER NOT NULL,
           Partida INTEGER NOT NULL,
        ID_r INTEGER PRIMARY KEY NOT NULL,
           FOREIGNER KEY (Jugadores) REFERENCES Jugador (Nombre),
           FOREIGNER KEY (Partidas) REFERENCES Partida (Ganador)
)ENGINE = InnoDB;


INSERT INTO Jugadores VALUES(1, ‘Juan’, 1234);
INSERT INTO Jugadores VALUES(2, ‘Sandra’, 7843);
INSERT INTO Jugadores VALUES(3, ‘Luis’, 6492);
INSERT INTO Jugadores VALUES(4, ‘Saul’, 2307);
INSERT INTO Jugadores VALUES(5, ‘Maria’, 0107);
INSERT INTO Jugadores VALUES(6, ‘Nuria’, 2708);


INSERT INTO Partidas VALUES(1, 24042023, 1215, 0032, ‘Juan’);
INSERT INTO Partidas VALUES(1, 28062023, 1647, 0118, ‘Saul’);
INSERT INTO Partidas VALUES(1, 01022024, 2109, 0239, ‘Maria’);


INSERT INTO Ranking VALUES(1, ‘Juan’, ‘Juan’);
INSERT INTO Ranking VALUES(2, ‘Sandra’, ‘Juan’);
INSERT INTO Ranking VALUES(3, ‘Luis’, ‘Saul’);
INSERT INTO Ranking VALUES(4, ‘Saul’, ‘Saul’);
INSERT INTO Ranking VALUES(5, ‘Maria’, ‘Maria’);
INSERT INTO Ranking VALUES(6, ‘Nuria’, ‘Maria’);


SELECT Jugadores.Nombre FROM Jugadores, Ranking WHERE Jugadores.Nombre = nom;