const canvas = document.getElementById("canvas");
const ctx = canvas.getContext("2d");
let laneWidth = canvas.width / 3;

let carX = laneWidth;
let carY = canvas.height - 200;
let obstacleX = Math.floor(Math.random() * 3) * laneWidth;
let obstacleY = 0;
const CAR_WIDTH = OBSTACLE_WIDTH = laneWidth
let score = 0;
const CAR_SPEED = CAR_WIDTH;
let OBSTACLE_SPEED = 5;
const restartX = canvas.width / 3;
const restartY = canvas.height / 2 + 100;
const restartWidth = 200;
const restartHeight = 50;


let gameState = "start";

let car = new Image();
car.src = "./images/car.png";
let randomObstacle;
let obstacles = [
  "./images/obstacle1.png",
  "./images/obstacle2.png",
  "./images/obstacle3.png",
];

// randomObstacle = Math.floor(Math.random() * obstacles.length);

let obstacle = new Image();

canvas.addEventListener("click", (event) => handleRestartClick(event));
obstacle.src = createRandomObstacle();

function main() {
  ctx.clearRect(0, 0, canvas.width, canvas.height);

  if (gameState === "start") {
    drawCar();
    drawObstacle();
    moveObstacle();
    detectCollison();
    scoreBoard();
    requestAnimationFrame(main);
  }
  if (gameState === "end") {
    endGame();
  }
}

document.addEventListener("keydown", moveCar);

function moveCar(event) {
  if (event.key === "ArrowLeft" && carX > 0) {
    carX = carX - CAR_SPEED;
  } else if (event.key === "ArrowRight" && carX < canvas.width - CAR_WIDTH) {
    carX = carX + CAR_SPEED;
  }
}

function drawCar() {
  ctx.fillStyle = "green";

  ctx.drawImage(car, carX, carY, CAR_WIDTH, 200);
}

function drawObstacle() {
  console.log("obstacle", obstacle.src);
  ctx.drawImage(obstacle, obstacleX, obstacleY, OBSTACLE_WIDTH, 200);
}

function moveObstacle() {
  obstacleY += OBSTACLE_SPEED;
  if (obstacleY >= canvas.height) {
    obstacleY = 0;
    obstacleX = Math.floor(Math.random() * 3) * laneWidth;

    score++;
  }
}
//detect collison between obstacle and car.
function detectCollison() {
  if (
    carX < obstacleX + CAR_WIDTH &&
    carX + CAR_WIDTH > obstacleX &&
    carY < obstacleY + 200 &&
    200 + carY > obstacleY
  ) {
    cancelAnimationFrame(main);
    gameState = "end";
  }
}

// shwoing score board
function scoreBoard() {
  ctx.font = "40px Arial";
  ctx.fillText("score: " + score, 10, 30);
}

//function for end game
function endGame() {
  ctx.clearRect(0, 0, canvas.width, canvas.height);
  ctx.fillStyle = "red";
  ctx.fillText("GAME OVER", canvas.width / 4, canvas.height / 2);
  ctx.fillText(
    "YOUR score :" + score,
    canvas.width / 4,
    canvas.height / 2 + 50
  );

  ctx.fillStyle = "green";
  ctx.fillRect(restartX, restartY, 200, 50);
  ctx.fillStyle = "black";
  ctx.fillText("Restart", canvas.width / 4 + 50, canvas.height / 2 + 140);
}

function handleRestartClick(event) {
  let x = event.clientX - canvas.offsetLeft;
  let y = event.clientY - canvas.offsetTop;
  if (
    x >= restartX &&
    x <= restartX + restartWidth &&
    y >= restartY &&
    y <= restartY + restartHeight
  ) {
    cancelAnimationFrame(main);

    window.location.reload();
  }
}

//function updateLevel
function updateLevel(score) {

  if (score > 10) 
  {
    OBSTACLE_SPEED += 10;
  }
  if(score >20) 
  {OBSTACLE_SPEED += 10;}

  console.log('obstacle speed: ' , OBSTACLE_SPEED)
}

//function generate random obstacle
function createRandomObstacle() {
  randomObstacle = Math.floor(Math.random() * obstacles.length);
  console.log("random: ", randomObstacle);
  return obstacles[randomObstacle];
}

// runGame = setInterval(main , 30);
main();
updateLevel(score);

