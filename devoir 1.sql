
INSERT INTO ETUDIANT (numCINETu, nomEtu, prenomEtu,dateNaissance,adressEtu,villeEtu,niveauEtu)
VALUES (AB234567, Alami, 1986/01/10, Rue du port 13,Tanger,bac);

INSERT INTO FORMATION (codeForm, titreForm, dureeForm,prixForm)
VALUES (11,Programming java,12,3600);
INSERT INTO SPERCIALITE (codeSpec,nomSpec,descSpec,Active)
VALUES (101,GL,Genie logiciel developpement,1);
INSERT INTO ETUDIANT (CodeSpec,codeForm)
VALUES (101,11);
INSERT INTO ETUDIANT (CodeSess,numCINEtu,TypeCours)
VALUES (1101,AB234567,Distanciel);

Update ETUDIANT
Select niveauEtu = Bac+5
Where niveauEtu=Master ;

Update ETUDIANT
Select niveauEtu = Bac+4
Where niveauEtu=Bachelor ;

Update ETUDIANT
Select niveauEtu = Doctorat
Where niveauEtu= phd ;


Update FORMATION
Select titreForm = developpement java
Where titreForm = Programming java ;


select concat(codeSess,’-‘, numCINEtu) AS numIinscription
from INSCRIPTION;


UPDATE ETUDIANT
SET  dateNaissance = '02 janvier 1987,
    villeEtu = ‘Kenitra'
WHERE nom= ‘Alami’;







