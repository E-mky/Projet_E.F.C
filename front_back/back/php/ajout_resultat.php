
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $ligue = $_POST["ligue"];
    $equipe1 = $_POST["equipe1"];
    $score1 = $_POST["score1"];
    $equipe2 = $_POST["equipe2"];
    $score2 = $_POST["score2"];

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "europefootballclub";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("La connexion à la base de données a échoué : " . $conn->connect_error);
    }
if ($score1 >> $score2){
    $sqlEquipe1 = "UPDATE $ligue SET
        Match_joue = Match_joue + 1,
        Match_gagne = Match_gagne + 1,
        But_pour = But_pour + $score1,
        But_contre = But_contre + $score2,
        But_difference = But_contre + But_pour,
        Point = Point + 3
        WHERE Nom_club = '$equipe1'";

    $sqlEquipe2 = "UPDATE $ligue SET
        Match_joue = Match_joue + 1,
        Match_perdu = Match_perdu + 1,
        But_pour = But_pour + $score2,
        But_contre = But_contre + $score1,
        But_difference = But_contre + But_pour
        WHERE Nom_club = '$equipe2'";
} else if ($score1 == $score2){
    $sqlEquipe1 = "UPDATE $ligue SET
        Match_joue = Match_joue + 1,
        Match_nul = Match_nul + 1,
        But_pour = But_pour + $score1,
        But_contre = But_contre + $score2,
        Point = Point + 1
        WHERE Nom_club = '$equipe1'";

    $sqlEquipe2 = "UPDATE $ligue SET
        Match_joue = Match_joue + 1,
        Match_nul = Match_nul + 1,
        But_pour = But_pour + $score2,
        But_contre = But_contre + $score1,
        Point = Point + 1
        WHERE Nom_club = '$equipe2'";
}else{
    $sqlEquipe1 = "UPDATE $ligue SET
        Match_joue = Match_joue + 1,
        Match_perdu = Match_perdu + 1,
        But_pour = But_pour + $score1,
        But_contre = But_contre + $score2,
        But_difference = But_contre + But_pour
        WHERE Nom_club = '$equipe1'";

    $sqlEquipe2 = "UPDATE $ligue SET
        Match_joue = Match_joue + 1,
        Match_gagne = Match_gagne + 1,
        But_pour = But_pour + $score2,
        But_contre = But_contre + $score1,
        But_difference = But_contre + But_pour,
        Point = Point + 3
        WHERE Nom_club = '$equipe2'";
}

    $conn->query($sqlEquipe1);
    $conn->query($sqlEquipe2);
    
    $conn->close();
    }
    include'../../front/html/index.html';
    ?>


