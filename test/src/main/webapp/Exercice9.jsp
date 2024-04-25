<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Tables de multiplication</title>
</head>
<body>
    <?php
    $debut = isset($_GET['debut']) ? intval($_GET['debut']) : 1;
    $fin = isset($_GET['fin']) ? intval($_GET['fin']) : 5;

    for ($i = 1; $i <= 5; $i++) {
        echo "<p>Table de multiplication par $i :</p>";
        for ($j = $debut; $j <= $fin; $j++) {
            echo "$i x $j = " . ($i * $j) . "&nbsp;&nbsp;&nbsp;";
        }
    }
    ?>
</body>
</html>
