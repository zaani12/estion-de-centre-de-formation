CREATE TABLE Formation(
   Id_Formation INT,
   Sujet VARCHAR(50),
   categorie VARCHAR(50),
   massHoraire VARCHAR(50),
   PRIMARY KEY(Id_Formation)
);

CREATE TABLE Formateur(
   Id_Formateur INT,
   Nom VARCHAR(100),
   Prenom VARCHAR(100),
   Email VARCHAR(50),
   competences VARCHAR(50),
   password VARCHAR(50),
   PRIMARY KEY(Id_Formateur)
);

CREATE TABLE Apprenant(
   Id_Apprenant INT,
   Nom VARCHAR(110),
   Prenom VARCHAR(100),
   Email VARCHAR(100),
   password VARCHAR(50),
   PRIMARY KEY(Id_Apprenant)
);

CREATE TABLE sessionFormation(
   Id_sessionFormation INT,
   DateDebut DATE,
   DateFin DATE,
   NbPlacesMax INT,
   Etat VARCHAR(50),
   Id_Formateur INT NOT NULL,
   Id_Formation INT NOT NULL,
   PRIMARY KEY(Id_sessionFormation),
   FOREIGN KEY(Id_Formateur) REFERENCES Formateur(Id_Formateur),
   FOREIGN KEY(Id_Formation) REFERENCES Formation(Id_Formation)
);

CREATE TABLE rejoindre_(
   Id_Apprenant INT,
   Id_sessionFormation INT,
   evaliation VARCHAR(100),
   PRIMARY KEY(Id_Apprenant, Id_sessionFormation),
   FOREIGN KEY(Id_Apprenant) REFERENCES Apprenant(Id_Apprenant),
   FOREIGN KEY(Id_sessionFormation) REFERENCES sessionFormation(Id_sessionFormation)
);
INSERT INTO `Apprenant` (`Id_Apprenant`, `Nom`, `Prenom`, `Email`, `password`) VALUES
(1, 'arun', 'jakson', 'arun@gmail.com', '$2y$10$s9hrmyoI3VUmT8jtOX8dJuL8JgmWwRok8fbVNFCJ4nkUWn'),
(2, 'rajesh', 'jony', 'rajesh@gmail.com', '$2y$10$xV.sR2HPAd2st.Apoq/Zg.7Du0vRzo7az7MbGm3YxYKacT'),
(3, 'moorthy', 'azart', 'moorthy@gmail.com', '$2y$10$xtOO9Fs1.lsZDlO3YSgfWuyPO84qYuaHNVpJpEPV6RZFxW'),
(4, 'raja', 'niki', 'raja@gmail.com', '$2y$10$1c7WixRFKwqcw3fOlhIjw.bqJ5IsrgiM9.SBpLiZJWXz37'),
(5, 'usha', 'kim', 'usha@gmail.com', '$2y$10$n6ENoFRQNSmRqQhSYaY4JOrU1FsEu6M3ag1xezPi6Cw5BW'),
(6, 'priya', 'doja', 'priya@gmail.com', '$2y$10$JcGPh9H6uib1NDvj0a./J.6ld5DVXth6d03JSqekVJAlK0'),
(7, 'Sundar', 'riana', 'Sundar@gmail.com', '$2y$10$bZWT2GCyfHQic6i3xgqTzuciCr6.OnbNsLGIqDi6fFxt0j'),
(8, 'Kavitha', 'ariana', 'Kavitha@gmail.com', '$2y$10$UrrzTEi5/A/dDno6BvBfvO26SAoh9Za.OpuTN8dAHVRoHH'),
(9, 'Dinesh', 'megan', 'Dinesh@gmail.com', '$2y$10$i1cgBS6MaeOj8WBu.nfKXOJoE8C.J4VOKGt2o7dmngA.Cp'),
(10, 'Hema', 'taylor', 'Dinesh@gmail.com', '$2y$10$Psm0iBwsJIGNJQMT05IncuzPeJruk4jVrF2I87Ldp32Lo6'),
(11, 'Gowri', 'selina', 'Gowri@gmail.com', '$2y$10$9Vk/6wDDLMLTsBXykQ5HJeTdvvpNSvpG/HQ6RYErslHUZY'),
(12, 'Ram', 'zine', 'Ram@gmail.com', '$2y$10$PuUlrKmPIC0hZBIM9bTWOeGQsE9S/xDMPqlpNhatI6KWbU'),
(13, 'Murugan', 'henry', 'Murugan@gmail.com', '$2y$10$t0vCp1DjAp7zNxlzpXRqIuxlV6YD0UzrTqf.4HRaouIcAj'),
(14, 'Jenifer', 'dounia', 'Jenifer@gmail.com', '$2y$10$0DzkgoHGi/FtAPeMKB8oXetIDAugTFTqug1FbIeRe2IrWd'),
(15, 'mamado', 'lini', 'mamado@gmail.com', '$2y$10$MGAGKoelU.LgUxqULtyIxeJ4uENkhzZO.z8D4QG0K/kwFo'),
(16, 'kamila', 'lamo', 'kamila@gmail.com', '$2y$10$gzVXHrCJ0lOptXNNwBuqWuXssF/jSr2QmlyXa9VvRPgoE/'),
(17, 'oranos', 'kaja', 'oranos@gmail.com', '$2y$10$LIj/EZ5wz37GiByAdAWuqO/BYp7voXAZvvWqa2HcYxrdfz'),
(18, 'hicham', 'mapo', 'hicham@gmail.com', '$2y$10$8IzJuI/pBD0gBNSqM.yuwO/306viyb0BsNOAkuvOpTwsiG'),
(19, 'yasin', 'ghirban', 'yasin@gmail.com', '$2y$10$CCqaFnnzNFhoSBtB.7phVO5iDa2t5T68u2.bTHfHha2o9n'),
(20, 'chiha', 'malak', 'chiha@gmail.com', '$2y$10$GTLjYB0h8zS4AcG026YjuOOf3iRKSYRUFNLMtjoPQDpfZY'),
(21, 'talib', 'mokbil', 'talib@gmail.com', '$2y$10$yDlH5A3cZkin28OCJLc4E.YB7vVLX37FKkpKDKDa6CH2en'),
(22, 'jamal', 'amokbil', 'jamal@gmail.com', '$2y$10$My2H3CP/aJV7n8/aXUEZT.ifgNp4UBwFeKR6PuhwPsVgYT'),
(23, 'milodi', 'jasi', 'milodi@gmail.com', '$2y$10$UMjzFQRV3Hf.TjyZUmYC.OGgYnJ/XaBgZuWUdqkl/jvED8'),
(24, 'nano', 'one', 'milodi@gmail.com', '$2y$10$DU/rdoWItx1vrm3mtlrkTuzlbp0kRpgWlcIFFcfTYsp/Po'),
(25, 'jamal', 'hamo', 'jamal@gmail.com', '$2y$10$nDHE1fJxVdEyCWomEl5MkON859FWJLCEx0rt4C5oBzTvri'),
(26, 'ploma', 'pija', 'ploma@gmail.com', '$2y$10$yv4YU2otk58eQ4lHyRCHcORgwKwmUfjZJms7Jb1ebhwt0k'),
(27, 'tiji', 'malkom', 'tiji@gmail.com', '$2y$10$pGzBPmwijVNP/l97YiBJ1uQNGmSHKJu7pXVgSXpf7QcYpG'),
(28, 'naomi', 'pitis', 'naomi@gmail.com', '$2y$10$J/TvD73eD8pszI84i7pQ5.u7UmYq7/Q4adjCmXizb3dHwA');

INSERT INTO `Formateur` (`Id_Formateur`, `Nom`, `Prenom`, `Email`, `competences`, `password`) VALUES
(1, 'anouar', 'ilias', 'ilias@gmail.com', 'Gestion', '$2y$10$CSYDTj0WsXRdGGfMehNcs.bRNGH1/kVrYiFUQtfKb62aOgAfTPflW'),
(2, 'daifane', 'yasmine', 'yasmine@gmail.com', 'Self development', '$2y$10$TqKwHLnRnBX7sm.QbTYj8uJva6qdmDS9fZUekIesu9qv095Nqu87K'),
(3, 'buik', 'hussain', 'hussain@gmail.com', 'Sensibilisation', '$2y$10$UTPmh4AQKSCSQDbPIxGWseNUiOrmwvvt0zXg/E9bnLAaR6yrPeS86'),
(4, 'buich', 'fatima zahra', 'fatima@gmail.com', 'Technologie', '$2y$10$ydPd47SWyyI95f0aRutvtuMsnJBUokE9NsHjyoyWogrb7ioh9FpZm'),
(5, 'el ghali', 'ikram', 'ikram@gmail.com', 'Self development', '$2y$10$VDyGTkj0sQyWpgz62/Bfxeq/12f6JLI0npCufgnOvQrvR6LSUvUkW');

INSERT INTO `Formation` (`Id_Formation`, `sujet`, `categorie`, `massHoraire`) VALUES
(1, 'La communication', 'Self development', '20'),
(2, 'Diversité et inclusion', 'Gestion', '10'),
(3, 'Gestion du temps', 'Gestion', '15'),
(4, 'Rédaction professionnelle', 'Gestion', '20'),
(5, 'Gestion du stress', 'Gestion', '14'),
(6, 'Sensibilisation à la sécurité', 'Sensibilisation', '20'),
(7, 'Technologie d assistance', 'Technologie', '16'),
(8, 'L éthique', 'Self development', '10'),
(9, 'Le développement personnel', 'Self development', '20'),
(10, 'Le harcèlement sur le lieu de travail', 'Self development', '15');