const canvas = document.getElementById("canvas");
const ctx = canvas.getContext("2d");

let carX = canvas.width / 2;
let carY = canvas.height - 50;
let laneWidth = canvas.width / 3;
let obstacleX = Math.floor(Math.random() * 3) * laneWidth;
let obstacleY = 0;
let SCORE = 0;
const CAR_SPEED = 20;
let OBSTACLE_SPEED = 5;
let runGame;
const restartX = canvas.width / 3;
const restartY = canvas.height / 2 + 100;
const restartWidth = 200;
const restartHeight = 50;


canvas.addEventListener("click", (event) => handleRestartClick(event));

function main() {
  ctx.clearRect(0, 0, canvas.width, canvas.height);
  drawCar();
  drawObstacle();
  moveObstacle();
  detectCollison();
  scoreBoard();
}

document.addEventListener("keydown", moveCar);

function moveCar(event) {
  if (event.key === "ArrowLeft" && carX > 0) {
    carX = carX - CAR_SPEED;
  } else if (
    event.key === "ArrowRight" &&
    carX < canvas.width - laneWidth/2
  ) {
    carX = carX + CAR_SPEED;
  }
}

function drawCar() {
  ctx.fillStyle = "green";
  ctx.fillRect(carX, carY, laneWidth / 2, 50);
}

function drawObstacle() {
  ctx.fillRect(obstacleX, obstacleY, laneWidth, 50);
}

function moveObstacle() {
  obstacleY += OBSTACLE_SPEED;
  if (obstacleY >= canvas.height) {
    obstacleY = 0;
    obstacleX = Math.floor(Math.random() * 3) * laneWidth;
    SCORE++;
  }
}
//detect collison between obstacle and car.
function detectCollison() {
  if (
    carX < obstacleX + laneWidth &&
    carX + laneWidth > obstacleX &&
    carY < obstacleY + 50 &&
    50 + carY > obstacleY
  ) 
  {
    endGame();
  }
}

// shwoing score board
function scoreBoard() {
  ctx.font = "40px Arial";
  ctx.fillText("Score: " + SCORE, 10, 30);
}

//function for end game
function endGame() {
  clearInterval(runGame);
  ctx.clearRect(0, 0, canvas.width, canvas.height);
  ctx.fillStyle = "red";
  ctx.fillText("GAME OVER", canvas.width / 3, canvas.height / 2);
  ctx.fillText(
    "YOUR SCORE :" + SCORE,
    canvas.width / 3,
    canvas.height / 2 + 50
  );

  ctx.fillText(
    "YOUR SCORE :" + SCORE,
    canvas.width / 3,
    canvas.height / 2 + 50
  );

  ctx.fillStyle = "green";
  ctx.fillRect(restartX, restartY, 200, 50);
  ctx.fillStyle = "black";
  ctx.fillText("Restart", canvas.width / 3 + 30, canvas.height / 2 + 140);
}

function handleRestartClick(event) {
  let x = event.clientX - canvas.offsetLeft;
  let y = event.clientY - canvas.offsetTop;
  console.log("x , y", x, y);
  console.log("event:", event);
  if (
    x >= restartX &&
    x <= restartX + restartWidth &&
    y >= restartY &&
    y <= restartY + restartHeight
  ) {
    // ctx.clearRect(0 , 0 ,CANVAS_WIDTH , canvas-CANVAS_HEIGHT)
    SCORE = 0;
    // main()
  }
}

//function updateLevel
function updateLevel(SCORE){
if(SCORE > 10)
  OBSTACLE_SPEED += 3
}


runGame = setInterval(main , 30);
