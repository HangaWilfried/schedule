/*------- INITIALISATION ------*/
/*
create database schedule;


create table periode(
    codePeriode varchar(5) not null,
    debut time not null,
    fin time not null,
    primary key(codePeriode)
);

create table semaine(
    codeSemaine varchar(8) not null,
    jour varchar(45) not null,
    primary key(codeSemaine)
);

create table filiere(
    codeFiliere varchar(25) not null,
    nomFiliere varchar(45) not null,
    primary key(codeFiliere)
);

create table niveau(
    codeNiveau varchar(8) not null,
    nomNiveau varchar(45) not null,
    primary key(codeNiveau)
);

create table enseignant(
    matricule varchar(10) not null,
    nomEnseignant varchar(45) not null,
    primary key(matricule)
);

create table campus(
    codeCampus varchar(8) not null,
    nomCampus varchar(45) not null,
    adresse varchar(45) not null,
    primary key(codeCampus)
);

create table enseignant_niveau(
    matricule varchar(10) not null,
    codeNiveau varchar(8) not null,
    foreign key(matricule) references enseignant(matricule),
    foreign key(codeNiveau) references niveau(codeNiveau)
);

create table salle(
    codeSalle varchar(10) not null,
    nomSalle varchar(45) not null,
    capacite int not null,
    codeCampus varchar(8) not null,
    primary key(codeSalle),
    foreign key(codeCampus) references campus(codeCampus)
);

create table semestre(
    codeSemestre varchar(6) not null,
    nomSemestre varchar(10) not null,
    primary key(codeSemestre)
);

create table ue(
    codeUE varchar(5) not null,
    intitule varchar(45) not null,
    codeFiliere varchar(8) not null,
    codeNiveau varchar(8) not null,
    codeSemestre varchar(6) not null,
    matricule varchar(10) not null,
    primary key(codeUE),
    foreign key(codeFiliere) references filiere(codeFiliere),
    foreign key(codeNiveau) references niveau(codeNiveau),
    foreign key(codeSemestre) references semestre(codeSemestre),
    foreign key(matricule) references enseignant(matricule)
);

create table seance(
    codeUE varchar(5) not null,
    codeSalle varchar(10) not null,
    codePeriode varchar(5) not null,
    codeSemaine varchar(8) not null,
    foreign key(codeUE) references ue(codeUE),
    foreign key(codeSalle) references salle(codeSalle),
    foreign key(codePeriode) references periode(codePeriode),
    foreign key(codeSemaine) references semaine(codeSemaine)
);

*/

/* ----- INSERTIONS ------- */


use schedule;

insert into periode(codePeriode, debut, fin)
values
  ('p01', '7:30:00', '10:00:00'),
  ('p02', '10:00:00', '12:00:00'),
  ('p03', '13:00:00', '15:30:00'),
  ('p04', '15:30:00', '18:30:00'),
  ('p05', '19:00:00', '22:00:00');

insert into campus(codeCampus, nomCampus, adresse)
 values
  ('camp01', 'campus 1', 'ANGE RAPHAEL'),
  ('camp02', 'campus 2', 'NDOGBONG'),
  ('camp03', 'campus 3', 'LOGBESSOU');

insert into filiere(codeFiliere, nomFiliere)
values
  ('fil-01', 'Informatique'),
  ('fil-02', 'Mathematique'),
  ('fil-03', 'Physique');

insert into niveau(codeNiveau, nomNiveau)
 values
   ('niv-01', 'LICENCE 1'),
   ('niv-02', 'LICENCE 2'),
   ('niv-03', 'LICENCE 3'),
   ('niv-04', 'MASTER 1'),
   ('niv-05', 'MASTER 2');

insert into salle(codeSalle, nomSalle, capacite, codeCampus)
 values
  ('sal-01', 'NLEP', 400, 'camp01'),
  ('sal-02', 'GEORGES NGANGO', 200, 'camp02'),
  ('sal-03', 'S.MELONE', 700, 'camp02'),
  ('sal-04', '102', 300, 'camp02'),
  ('sal-05', 'A6', 800, 'camp03'),
  ('sal-06', 'A2', 1000, 'camp03'),
  ('sal-07', 'A5', 700, 'camp03');

insert into enseignant(matricule, nomEnseignant)
values
  ('teach01', 'DR. NDJIE'),
  ('teach02', 'DR MOUSKOLAI'),
  ('teach03', 'DR. UM LAURENCE'),
  ('teach04', 'DR. NDONFACK'),
  ('teach05', 'DR. FONO'),
  ('teach06', 'DR. NOUMSI'),
  ('teach07', 'DR. DJEUMEN'),
  ('teach08', 'DR. NDJIKEN'),
  ('teach09', 'DR. FOTSING'),
  ('teach10', 'DR ONANA'),
  ('teach11', 'DR. PEMHA'),
  ('teach12', 'DR. TSIMI');


insert into semaine(codeSemaine, jour)
 values
   ('sem01', 'LUNDI'),
   ('sem02', 'MARDI'),
   ('sem03', 'MERCREDI'),
   ('sem04', 'JEUDI'),
   ('sem05', 'VENDREDI'),
   ('sem06', 'SAMEDI');


insert into enseignant_niveau(matricule, codeNiveau)
 values
   ('teach01', 'niv-02'),
   ('teach01', 'niv-03'),
   ('teach02', 'niv-03'),
   ('teach02', 'niv-01'),
   ('teach03', 'niv-01'),
   ('teach03', 'niv-02'),
   ('teach03', 'niv-03'),
   ('teach05', 'niv-01'),
   ('teach06', 'niv-02'),
   ('teach06', 'niv-03'),
   ('teach06', 'niv-01');


insert into seance(codeUE, codeSalle, codePeriode, codeSemaine)
 values
   ('in181', 'sal-01', 'p01', 'sem01'),
   ('sa366', 'sal-01', 'p03', 'sem02'),
   ('in132', 'sal-01', 'p02', 'sem04'),
   ('in234', 'sal-05', 'p01', 'sem03'),
   ('in223', 'sal-05', 'p02', 'sem03'),
   ('in181', 'sal-03', 'p02', 'sem05'),
   ('in121', 'sal-06', 'p04', 'sem06');

alter table semestre modify column nomSemestre varchar(20);

insert into semestre(codeSemestre, nomSemestre)
 values
   ('smtr1', 'SEMESTRE 1'),
   ('smtr2', 'SEMESTRE 2'),
   ('smtr3', 'SEMESTRE 3'),
   ('smtr4', 'SEMESTRE 4'),
   ('smtr5', 'SEMESTRE 5'),
   ('smtr6', 'SEMESTRE 6'),
   ('smtr7', 'SEMESTRE 7'),
   ('smtr8', 'SEMESTRE 8'),
   ('smtr9', 'SEMESTRE9'),
   ('smtr10', 'SEMESTRE 10');


update semestre set nomSemestre = 'SEMESTRE 9' where codeSemestre = 'smtr9';


insert into ue(codeUE, intitule, codeFiliere, codeNiveau, codeSemestre, matricule)
 values
   ('in181', 'ANALYSE DE LA DROITE REELLE', 'fil-01', 'niv-01', 'smtr1', 'teach05'),
   ('sa366', "SYSTEME D'AIDE A LA DECISION", 'fil-01', 'niv-03', 'smtr6', 'teach02'),
   ('in132', "PROGRAMMATION EN C", 'fil-01', 'niv-01', 'smtr1', 'teach02'),
   ('in121', 'ARCHITECTURE DES ORDINATEURS', 'fil-01', 'niv-01', 'smtr1', 'teach03'),
   ('in223', 'INTRODUCTION AUX BASES DE DONNEES', 'fil-01', 'niv-02', 'smtr1', 'teach01'),
   ('in234', "GENIE LOGICIEL", 'fil-01', 'niv-02', 'smtr4', 'teach07');

/* ----- REQUETES ------- */

select * from campus;
select * from enseignant;
select * from enseignant_niveau;
select * from filiere;
select * from niveau;
select * from periode;
select * from salle;
select * from seance;
select * from semaine;
select * from semestre;
select * from ue;


/* ------ AFFICHAGE DE TOUTES LES SEANCES PROGRAMMEES POUR UNE SEMAINE TOUTES FILIERES CONFONDUES ------ */

select semaine.jour, periode.debut, periode.fin, niveau.nomNiveau, filiere.nomFiliere, ue.intitule, salle.nomSalle, enseignant.nomEnseignant
from seance
 inner join semaine
    on seance.codeSemaine = semaine.codeSemaine
  inner join periode
    on seance.codePeriode = periode.codePeriode
  inner join ue
    on seance.codeUE = ue.codeUE
  inner join salle
    on salle.codeSalle = seance.codeSalle
  inner join niveau
    on niveau.codeNiveau = ue.codeNiveau
  inner join filiere
    on filiere.codeFiliere = ue.codeFiliere
  inner join enseignant
    on enseignant.matricule = ue.matricule
;
