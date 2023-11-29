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
        if ($a['Points'] > $b['Points']) {
            return -1;
        } elseif ($a['Points'] < $b['Points']) {
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

    echo "<table border='1'>
            <tr>
                <th>Position</th>
                <th>Nom_club</th>
                <th>Points</th>
                <th>Match_joué</th>
                <th>Match_gagné</th>
                <th>Match_nul</th>
                <th>Match_perdu</th>
                <th>But_pour</th>
                <th>But_contre</th>
                <th>But_difference</th>
            </tr>";

    foreach ($equipes as $key => $equipe) {
        echo "<tr>";
        echo "<td>" . ($key + 1) . "</td>";
        echo "<td>" . $equipe['Nom_club'] . "</td>";
        echo "<td>" . $equipe['Points'] . "</td>";
        echo "<td>" . $equipe['Match_joue'] . "</td>";
        echo "<td>" . $equipe['Match_gagne'] . "</td>";
        echo "<td>" . $equipe['Match_nul'] . "</td>";
        echo "<td>" . $equipe['Match_perdu'] . "</td>";
        echo "<td>" . $equipe['But_pour'] . "</td>";
        echo "<td>" . $equipe['But_contre'] . "</td>";
        echo "<td>" . $equipe['But_difference'] . "</td>";
        echo "</tr>";
    }
    echo "</table>";
}
?>
