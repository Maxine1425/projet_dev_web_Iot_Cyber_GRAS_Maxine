const Colors = {
    NONE: "none",
    WHITE: "white",
    GREEN: "green",
    
}

window.addEventListener("load", run);

function run()
{    
    generatePixels();
    attachColorsEvent();
    //setInterval(processPixels, 1000);
}

//-----------------------------------------------------------------------------

function generatePixels()
{
    const parent = document.querySelector("pixel-parts");

    if (parent === null)
        return;

    for (let i = 0; i < 900; ++i)
    {
        parent.appendChild(createPixel());
    }
}

function createPixel()
{
    const pixel = document.createElement("pixel-part");
    pixel.addEventListener("click", onPixelClick);

    return pixel;
}

function onPixelClick(event)
{
    const pixel = event.target;
    const activeColor = getActiveColor(); 

    const x = pixel.offsetLeft;
    const y = pixel.offsetTop;

    console.log("Coordonnées du pixel cliqué  x : ", x, " y : ", y);


    if (activeColor === Colors.WHITE /*&& pixel.classList.contains("") date creation jsp quoi */)
        white(pixel);
    else if (activeColor === Colors.GREEN /*&& pixel.classList.contains("green")*/)
        green(pixel);

}

function white(pixel){
    //peut etre recuprer dans la bdd la couleur du pixel et le mettre dans le remove 
    pixel.classList.remove("green");
    pixel.classList.add("white");
    setPixelColor(x, y, "white")
}
//c'est balot
function green(pixel){
    pixel.classList.remove("white");
    pixel.classList.add("green");
    setPixelColor(x, y, "green")
}


/*function processPixels()
{
    const pixels = document.querySelectorAll("pixel-part");

    for (const pixel of pixels)
    {
        //grass(pixel);
    }
}*/

function attachColorsEvent()
{
    const colors = document.querySelectorAll("color");

    for (const color of colors)
    {
        color.addEventListener("click", enableColor);
    }
}

function enableColor(event)
{
    disableActiveColor();

    event.target.classList.add("active");
}

function disableActiveColor()
{
    const activeColorHTML = document.querySelector("color.active");
    activeColorHTML?.classList.remove("active");
}

function getActiveColor()
{
    const activeColorHTML = document.querySelector("color.active");
    let activeColor = Colors.NONE;

    switch (activeColorHTML.id)
    {
        case "color-white": activeColor = Colors.WHITE; break;
        case "color-green": activeColor = Colors.GREEN; break;
    }

    return activeColor;
}

async function setPixelColor(x, y, color)
{
    const formData = new FormData();
    formData.append("x", x);
    formData.append("y", y);
    formData.append("color", color);

    const response = await fetch("grille.php", {
        method: "post",
        body: formData
    });

    const message = await response.text();

    console.log(message);
}