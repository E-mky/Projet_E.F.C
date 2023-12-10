<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "EuropeFootballClub";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("La connexion a échoué : " . $conn->connect_error);
}

$nomEquipe = $_POST['nomEquipe'];
$ligue = $_POST['ligue'];

$sql = "INSERT INTO $ligue (Nom_club) VALUES ('$nomEquipe')";

if ($conn->query($sql) === TRUE) {
    echo "L'équipe a été ajoutée avec succès.";
} else {
    echo "Erreur lors de l'ajout de l'équipe : " . $conn->error;
}

$conn->close();
?>
