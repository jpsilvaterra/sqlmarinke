CREATE DATABASE BDRestoreCMD

USE BDRestoreCMD
CREATE TABLE Clientes
(
	Id INT IDENTITY NOT NULL PRIMARY KEY,
	Nome VARCHAR(50) NOT NULL DEFAULT(''),
	Endereco VARCHAR(150) NOT NULL DEFAULT(''),
)

INSERT INTO Clientes (Nome, Endereco) VALUES ('Joao Silva', 'Av Guarapari 99')
INSERT INTO Clientes (Nome, Endereco) VALUES ('Filipe', 'Santo Amaro 129')

SELECT * FROM Clientes

USE master
BACKUP DATABASE BDRestoreCMD TO DISK = 'C:\SQLBackup\BackupProtegido.bak'

USE master
DROP DATABASE BDRestoreCMD

USE master
RESTORE DATABASE BDRestoreCMD FROM DISK = 'C:\SQLBackup\BackupProtegido.bak' WITH REPLACE

USE BDRestoreCMD
SELECT * FROM Clientes