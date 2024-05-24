<?php
    include ("include/config.php");
    EstConnecte();
    //$id_grille=$SESSION['id_grille'];

    if(isset($_POST["x"]) /*&& isset($_POST["y"]) && isset($_POST["color"])*/)
    {
        $xPixel = $_POST["x"];
        $yPixel = $_POST["y"];
        $color = $_POST["color"];
    
        echo "J'ai bien affecté la couleur $color au pixel de coordonnées ($x;$y).";
        
    }
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
        <h1>PixelWar</h1>
        <div>
        <colors>
            <color id="color-white" title="white"></color>
            <color id="color-green" title="green"></color>
        </colors>
            <pixel>
                <pixel-parts></pixel-parts>
            </pixel>
        </div>
        <script src="script.js"></script>
    </body>
</html>