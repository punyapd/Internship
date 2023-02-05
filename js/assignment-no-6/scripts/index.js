let canvas = document.getElementById("flappy-bird");
let ctx = canvas.getContext("2d");
CANVAS_HEIGHT = 700;
CANVAS_WIDTH = 400;
canvas.width = CANVAS_WIDTH;
canvas.height = CANVAS_HEIGHT;
const restartX = canvas.width / 3;
const restartY = canvas.height / 2 + 50;
const restartHeight = 100;
const restartWidth = 200;

const obstacleDown = new Image();
obstacleDown.src = "./images/pipe-green.png";

const obstacleUp = new Image();
obstacleUp.src = "./images/pipe-green-up.png";

const background = new Image();
background.src = "./images/background-day.png";

const bluebird = new Image();
bluebird.src = "./images/bluebird-downflap.png";

const spritebase = new Image();
spritebase.src = "./images/base.png";

const gameOverImage = new Image();
gameOverImage.src = "./images/gover.png";

const restartImage = new Image();
restartImage.src = "./images/restart.png";

let sprites = {
  background,
  spritebase,
  obstacleDown,
  obstacleUp,
  bluebird,
  gameOverImage,
  restartImage,
};

let restartData = {
  x: restartX,
  y: restartY,
  width: restartWidth,
  height: restartHeight,
};

let game = new Game(canvas, sprites, ctx, restartData);

game.start();

function gameLoop() {
  if (game.game_status == "start") {
    ctx.clearRect(0, 0, CANVAS_WIDTH, CANVAS_HEIGHT);

    //draw
    game.draw();
    
    //update
    game.update();

    //show score
    game.showScore();
    requestAnimationFrame(gameLoop);
  }

  if (game.game_status == "end") {
    cancelAnimationFrame(gameLoop);
    game.end(gameLoop);
  }
}

gameLoop();
