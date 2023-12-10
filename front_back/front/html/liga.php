<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Classement Liga</title>
    <link rel="icon" href="../img/image-1.png">
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
    <header>
        <div class="Nom">
            <img id="logo" src="../img/Logo.png" alt="Logo">
            <h3>Europe Football Classement</h3>
        </div>
        <a href="index.html" class="nav">ACCUEIL</a>
        <a href="index.html" class="nav">CLASSEMENT</a>
        <a href="index.html" class="nav">MAP</a>
        <div class="boutton">
            <button id="inscription"><a href="../inscription_connexion/inscription.html">INSCRIPTION</a></button>
            <button id="connexion"><a href="../inscription_connexion/connexion.html">CONNEXION</a></button>
        </div>
    </header>

<section class="categories-wrapper section-padding3">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                
                <div class="tc-widget-standings-style8">
                    <h3 class="tc-widget-title mb-30">Classement Liga</h3>
                    <form action="contact.php" class="form">
                        
                    </form>
                    <div class="table-responsive">
    <?php
    // Inclure le fichier PHP
    include '../../back/php/classement_equipe.php';
    // Appeler la fonction PHP
    maFonction('liga');
    ?>
                        
</div>

    </section>
            <footer>
                <div class="center">
                <h1>E.F.C</h1>
                <h3>Europe Football Classement</h3>
                <p>&copy; 2023 E.F.C Europe Football Classement. Tous droits réservés.</p>
                </div>
            </footer>
            </body>                               
            </html>