let canvas = document.createElement("canvas");
let ctx = canvas.getContext('2d');
let timer = 0;
let caught = false;
let fps = 10;
document.body.appendChild(canvas);
canvas.width = 800;
canvas.height = 544;

// Background image
let bgReady = false;
let bgImage = new Image();

bgImage.onload = function () {
    bgReady = true;
};

// bgImage.src = "./images/background1.jpg";

// nar image
let narReady = false;
let narImage = new Image();
narImage.onload = function () {
    narReady = true;
};
narImage.src = "./images/ant.png";

let nar = {};
let narCaught = 0;
// When nar is caught, reset
let reset = function () {
    nar.x = 40 + (Math.random() * (canvas.width - 70));
    do {
        nar.y = 40 + (Math.random() * (canvas.height - 70));
    }
    while (nar.y < 100)
};
window.addEventListener("mousedown", onMouseDown, false);
function onMouseDown(e) {

    if (e.button != 0) return;

    mouseXinCanvas = e.clientX;
    mouseYinCanvas = e.clientY;

    if (narBody(nar, mouseXinCanvas, mouseYinCanvas)) {
        caught = true;
        clearInterval(timer);
        timer = setInterval(reset, 20000 / fps);
        reset();
    }
    if (ResetScore(mouseXinCanvas, mouseYinCanvas)) {
        location.reload();
    }
    if (ResetSpeed(mouseXinCanvas, mouseYinCanvas)) {
        clearInterval(timer);
        timer = setInterval(reset, 20000 / fps);
        reset();
        render();
    }
};

//nar's body define
function narBody(nar, x, y) {

    if (x <= (nar.x + 80)
        && nar.x <= (x + 80)
        && y <= (nar.y + 80)
        && nar.y <= (y + 80)
    ) {
        fps = fps + 5;
        narCaught++;
        return true;
    }
    return false;
};

//Reset Score box
function ResetScore(x, y) {

    if (x > (305)
        && x < (545)
        && y > (15)
        && y < (85)
    ) {
        return true;
    }
    return false;
};

//Reset speed box
function ResetSpeed(x, y) {
    if (x > (605)
        && x < (845)
        && y > (15)
        && y < (85)
    ) {
        fps = 10;
        return true;
    }
    return false;
};

// Draw everything
let render = function () {

   //===========================================================
   // add the following line to clear the display.

   ctx.clearRect(0,0,ctx.canvas.width,ctx.canvas.height);


    if (bgReady) {
        ctx.drawImage(bgImage, 0, 100);
    }
    if (narReady) {
        ctx.drawImage(narImage, nar.x, nar.y);
    }
    if (caught == true) {
        if (bgReady) {
            ctx.drawImage(bgImage, 0, 100);
        }
        caught = false;
    }

    // Score, Title
    ctx.fillStyle = "rgb(65, 226, 24)";
    ctx.font = "34px Helvetica";
    ctx.textAlign = "left";
    ctx.textBaseline = "top";
    ctx.fillText("Catch Naruto!!!", 5, 40);
    ctx.font = "20px Helvetica";
    ctx.fillText("Score: " + narCaught, 10, 10);



    // Reset Score, Speed button
    ctx.fillStyle = "rgb(30, 168, 99)";
    ctx.fillRect(250, 10, 250, 80);
    ctx.fillRect(520, 10, 250, 80);
    ctx.fillStyle = "rgb(30, 168, 99)";
    ctx.fillRect(255, 15, 240, 70);
    ctx.fillRect(525, 15, 240, 70);
    ctx.fillStyle = "rgb(255, 255, 255)";
    ctx.font = "34px Arial";
    ctx.fillText("Reset Score", 275, 30);
    ctx.fillText("Reset Speed", 545, 30);

};

// The main game loop
let main = function () {
    render();
    // Request to do this again ASAP
    requestAnimationFrame(main);
};

// Cross-browser support for requestAnimationFrame
let w = window;
requestAnimationFrame = w.requestAnimationFrame || w.webkitRequestAnimationFrame || w.msRequestAnimationFrame || w.mozRequestAnimationFrame;
// Let's play this game!
//let then = Date.now();
reset();
main();