<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nom = $_POST['nom'];
    $prenom = $_POST['prenom'];
    $date_naissance = $_POST['date_naissance'];
    $lieu_naissance = $_POST['lieu_naissance'];

    echo "Nom: $nom<br>";
    echo "Prénom: $prenom<br>";
    echo "Date de naissance: $date_naissance<br>";
    echo "Lieu de naissance: $lieu_naissance<br>";
} else {
?>
    <!DOCTYPE html>
    <html lang="fr">
    <head>
        <meta charset="UTF-8">
        <title>Présentation</title>
    </head>
    <body>
        <form action="presentation.php" method="post">
            <label for="nom">Nom :</label>
            <input type="text" name="nom" required>
            <br>
            <label for="prenom">Prénom :</label>
            <input type="text" name="prenom" required>
            <br>
            <label for="date_naissance">Date de naissance :</label>
            <input type="date" name="date_naissance" required>
            <br>
            <label for="lieu_naissance">Lieu de naissance :</label>
            <input type="text" name="lieu_naissance" required>
            <br>
            <input type="submit" value="Envoyer">
        </form>
    </body>
    </html>
<?php
}
?>
