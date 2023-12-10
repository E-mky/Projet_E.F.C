<?php

function maFonction($ligue) {

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "europefootballclub";


    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("La connexion à la base de données a échoué : " . $conn->connect_error);
    }

    $sql = "SELECT * FROM $ligue";
    $result = $conn->query($sql);

    if (!$result) {
        die("Erreur lors de l'exécution de la requête : " . $conn->error);
    }

    $equipes = [];
    while ($row = $result->fetch_assoc()) {
        $equipes[] = $row;
    }

    $conn->close();

    function customSort($a, $b) {
        if ($a['Point'] > $b['Point']) {
            return -1;
        } elseif ($a['Point'] < $b['Point']) {
            return 1;
        } else {
            if ($a['But_difference'] > $b['But_difference']) {
                return -1;
            } elseif ($a['But_difference'] < $b['But_difference']) {
                return 1;
            } else {
                return 0;
            }
        }
    }

    usort($equipes, 'customSort');

    echo "<div class='table-responsive'> 
        <table class='table'>
            <thead>
                <tr>
                    <th>Position</th>
                    <th>Club</th>
                    <th>Points</th>
                    <th>Joués</th>
                    <th>Gagnés</th>
                    <th>Nuls</th>
                    <th>Perdus</th>
                    <th>Buts Pour</th>
                    <th>Buts Contre</th>
                    <th>DIFF.</th>
                </tr>
            </thead>
            <tbody>";

foreach ($equipes as $key => $equipe) {
    echo "<tr>";
    echo "<td>" . ($key + 1) . "</td>";
    echo "<td class='team'>";
    echo "<div class='logo'></div>";
    echo "<div class='team-details'>";
    echo "<div class='team-name'>" . $equipe['Nom_club'] . "</div>";
    echo "</div>";
    echo "</td>";
    echo "<td>" . $equipe['Point'] . "</td>";
    echo "<td>" . $equipe['Match_joue'] . "</td>";
    echo "<td>" . $equipe['Match_gagne'] . "</td>";
    echo "<td>" . $equipe['Match_nul'] . "</td>";
    echo "<td>" . $equipe['Match_perdu'] . "</td>";
    echo "<td>" . $equipe['But_pour'] . "</td>";
    echo "<td>" . $equipe['But_contre'] . "</td>";
    echo "<td>" . $equipe['But_difference'] . "</td>";
    echo "</tr>";
}

echo "</tbody></table></div>";
}
?>
