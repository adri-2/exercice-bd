--
-- Fichier généré par SQLiteStudio v3.4.4 sur mer. nov. 13 15:05:36 2024
--
-- Encodage texte utilisé : System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Tableau : Appartient
CREATE TABLE IF NOT EXISTS Appartient (
    CodeSpec VARCHAR (10),
    CodeForm VARCHAR (10),
    Duree    INT,
    PRIMARY KEY (
        CodeSpec,
        CodeForm
    ),
    FOREIGN KEY (
        CodeSpec
    )
    REFERENCES Specialite (CodeSpec),
    FOREIGN KEY (
        CodeForm
    )
    REFERENCES Formation (CodeForm) 
);


-- Tableau : EstInscrit
CREATE TABLE IF NOT EXISTS EstInscrit (
    NumCINEtu VARCHAR (15),
    CodeSess  VARCHAR (10),
    TypeCours VARCHAR (50),
    PRIMARY KEY (
        NumCINEtu,
        CodeSess
    ),
    FOREIGN KEY (
        NumCINEtu
    )
    REFERENCES Etudiant (NumCINEtu),
    FOREIGN KEY (
        CodeSess
    )
    REFERENCES Session (CodeSess) 
);


-- Tableau : Etudiant
CREATE TABLE IF NOT EXISTS Etudiant (
    NumCINEtu     VARCHAR (15)  PRIMARY KEY,
    NomEtu        VARCHAR (50)  NOT NULL,
    PrenomEtu     VARCHAR (50)  NOT NULL,
    DateNaissance DATE          NOT NULL,
    AdresseEtu    VARCHAR (100),
    VilleEtu      VARCHAR (50),
    NiveauEtu     VARCHAR (10),
    CodeSess      VARCHAR (10)  REFERENCES Session (CodeSess) 
);


-- Tableau : Formation
CREATE TABLE IF NOT EXISTS Formation (
    CodeForm  VARCHAR (10)    PRIMARY KEY,
    TitreForm VARCHAR (100)   NOT NULL,
    DureeForm INT,
    PrixForm  DECIMAL (10, 2),
    CodeSpec  VARCHAR (10),
    FOREIGN KEY (
        CodeSpec
    )
    REFERENCES Specialite (CodeSpec) 
);


-- Tableau : Session
CREATE TABLE IF NOT EXISTS Session (
    CodeSess  VARCHAR (10) PRIMARY KEY,
    NomSess   VARCHAR (50) NOT NULL,
    DateDebut DATE         NOT NULL,
    DateFin   DATE         NOT NULL,
    NumCINEtu VARCHAR (15),
    CodeForm  VARCHAR (10),
    FOREIGN KEY (
        NumCINEtu
    )
    REFERENCES Etudiant (NumCINEtu),
    FOREIGN KEY (
        CodeForm
    )
    REFERENCES Formation (CodeForm) 
);


-- Tableau : Specialite
CREATE TABLE IF NOT EXISTS Specialite (
    CodeSpec VARCHAR (10)  PRIMARY KEY,
    NomSpec  VARCHAR (100) NOT NULL,
    DescSpec TEXT
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
