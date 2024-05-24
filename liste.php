<?php 
    include ("include/config.php");
    EstConnecte();
    //$id_compte=$_SESSION['id_compte'];

    if (isset($_POST["nom"]) ) 
    {
        $nom = QuoteStr($_POST["nom"]);
        $sql="insert into grille (nom, id_compte) values ($nom, $id_compte)";
        ExecuteSQL($sql);
        header("Location: grille.php");
       
    }


    $sql = "select id_grille, nom, date_creation from grille";
    $grilles = [];
    GetSQL($sql, $grilles);
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Grille</title>
        <link  href="css/style.css" rel="stylesheet">
    </head>
    <body>
        <h1>Créer une nouvelle grille</h1>
        <div>
        <form method="POST">
            <input type="text" name="nom" placeholder="nom" required>
            <br>
            <input type="submit" value="Créer la grille">
        </form>  
        </div>
        <h1>Liste des grilles</h1>
        <div>
            <ul>
                <?php

                    if (count($grilles) > 0) {
                        foreach ($grilles as $grille) {
                            /*echo '<form method="POST">';
                            echo '<input type="submit" value="' . htmlspecialchars($grille['nom']) . ' - ' . htmlspecialchars($grille['date_creation']) . '">';
                            echo '</form>';*/
                            echo '<form method="POST" action="grille.php">';
                            echo '<button type="submit" name="submit_grille">' . htmlspecialchars($grille['nom']) . ' - ' . htmlspecialchars($grille['date_creation']) . '</button>';
                            echo '</form>';
                            //$SESSION['id_grille']=$grille['id_grille'];

                            
                        }
                    } 
                    else {
                        echo "<p>Aucune grille trouvée.</p>";
                    }
                ?>
            </ul>
                  
        </div>
        <script src="script.js"></script>
    </body>
</html>