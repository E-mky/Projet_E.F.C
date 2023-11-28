<?php
// Connexion à la base de données (à personnaliser avec vos informations)
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "EuropeFootballClub";

$conn = new mysqli($servername, $username, $password, $dbname);

// Vérification de la connexion
if ($conn->connect_error) {
    die("La connexion a échoué : " . $conn->connect_error);
}

// Récupération des données du formulaire
$nomEquipe = $_POST['nomEquipe'];
$ligue = $_POST['ligue'];

// Préparation de la requête SQL
$sql = "INSERT INTO $ligue (Nom_club) VALUES ('$nomEquipe')";

// Exécution de la requête
if ($conn->query($sql) === TRUE) {
    echo "L'équipe a été ajoutée avec succès.";
} else {
    echo "Erreur lors de l'ajout de l'équipe : " . $conn->error;
}

// Fermeture de la connexion
$conn->close();
?>
