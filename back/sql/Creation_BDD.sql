-- Création de la base de données
CREATE DATABASE IF NOT EXISTS EuropeFootballClub;

-- Utilisation de la base de données
USE EuropeFootballClub;

-- Création de la table Ligue1
CREATE TABLE IF NOT EXISTS Ligue1 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Nom_club VARCHAR(255) NOT NULL,
    Match_joue INT,
    Match_gagne INT,
    Match_nul INT,
    Match_perdu INT,
    But_pour INT,
    But_contre INT,
    But_difference INT,
    Point INT
);

-- Création de la table PremierLeague
CREATE TABLE IF NOT EXISTS PremierLeague (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Nom_club VARCHAR(255) NOT NULL,
    Match_joue INT,
    Match_gagne INT,
    Match_nul INT,
    Match_perdu INT,
    But_pour INT,
    But_contre INT,
    But_difference INT,
    Point INT
);

-- Création de la table Liga
CREATE TABLE IF NOT EXISTS Liga (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Nom_club VARCHAR(255) NOT NULL,
    Match_joue INT,
    Match_gagne INT,
    Match_nul INT,
    Match_perdu INT,
    But_pour INT,
    But_contre INT,
    But_difference INT,
    Point INT
);

-- Création de la table SerieA
CREATE TABLE IF NOT EXISTS SerieA (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Nom_club VARCHAR(255) NOT NULL,
    Match_joue INT,
    Match_gagne INT,
    Match_nul INT,
    Match_perdu INT,
    But_pour INT,
    But_contre INT,
    But_difference INT,
    Point INT
);

-- Création de la table Bundesliga
CREATE TABLE IF NOT EXISTS Bundesliga (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Nom_club VARCHAR(255) NOT NULL,
    Match_joue INT,
    Match_gagne INT,
    Match_nul INT,
    Match_perdu INT,
    But_pour INT,
    But_contre INT,
    But_difference INT,
    Point INT
);
