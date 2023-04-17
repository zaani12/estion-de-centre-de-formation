<?php
// Afficher les sessions de formation à venir qui ne se chevauchent pas avec une session donnée
SELECT *
FROM sessions
WHERE date_debut > NOW()
AND id_session <> <id_session>
AND date_debut > (SELECT date_fin FROM sessions WHERE id_session = <id_session>)








// Afficher les sessions de formation à venir avec des places encore disponibles :
    SELECT *
    FROM sessions
    WHERE date_debut > NOW()
    AND nombre_places > (SELECT COUNT(*) FROM inscriptions WHERE id_session = sessions.id_session)
    




    //  Afficher le nombre d'inscrits par session de formation
    SELECT id_session, COUNT(*) AS nombre_inscrits
    FROM inscriptions
    GROUP BY id_session
    



// Afficher l'historique des sessions de formation d'un apprenant donné
SELECT s.*
FROM sessions s
JOIN inscriptions i ON s.id_session = i.id_session
WHERE i.id_apprenant = <id_apprenant>
ORDER BY date_debut DESC



// Afficher la liste des sessions qui sont affectées à un formateur donné, triées par date de débutSELECT s.*
FROM sessions s
WHERE s.id_formateur = :id_formateur
ORDER BY s.date_debut


// Afficher la liste des apprenants d'une session donnée d'un formateur donnéSELECT a.*
FROM apprenants a
INNER JOIN inscriptions i ON a.id_apprenant = i.id_apprenant
WHERE i.id_session = :id_session AND i.id_formateur = :id_formateur

Afficher l'historique des sessions de formation d'un formateur donnéSELECT s.*
FROM sessions s
WHERE s.id_formateur = :id_formateur
// Afficher les formateurs qui sont disponibles entre 2 datesSELECT f.*
FROM formateurs f
WHERE NOT EXISTS (
    SELECT 1
    FROM sessions s
    WHERE s.id_formateur = f.id_formateur
    AND (s.date_debut BETWEEN :date_debut AND :date_fin OR s.date_fin BETWEEN :date_debut AND :date_fin)
)






// Afficher toutes les sessions d'une formation donnée
 SELECT *
FROM sessions
WHERE id_formation = :id_formation

// Afficher le nombre total des sessions par catégorie de formationSELECT c.libelle, COUNT(s.id_session) as nombre_sessions
FROM categories_formation c
LEFT JOIN formations f ON c.id_categorie = f.id_categorie
LEFT JOIN sessions s ON f.id_formation = s.id_formation
GROUP BY c.libelle


// Afficher le nombre total des inscrits par catégorie de formationSELECT c.libelle, COUNT(i.id_inscription) as nombre_inscrits
FROM categories_formation c
LEFT JOIN formations f ON c.id_categorie = f.id_categorie
LEFT JOIN sessions s ON f.id_formation = s.id_formation
LEFT JOIN inscriptions i ON s.id

