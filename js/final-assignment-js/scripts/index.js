//sounds
// let bgSound = document.getElementById("myBgSound");
// let levelCompleteSound = document.getElementById("levelSound");
// let swipeSound = document.getElementById("swipeSound");
let canvas = document.querySelector("#block-escape");
let ctx = canvas.getContext("2d");

canvas.height = 750;
canvas.width = 600;

let isDragging = false;
let isStartCount = false;

let oldX = 0;
let oldY = 0;

let dx = "";
let dy = "";

// let movesCount = 0;

const baseImage = new Image();
baseImage.src = "./assets/images/base.png";

const pauseImage = new Image();
pauseImage.src = "./assets/images/pause.png";

const resetWhiteImage = new Image();
resetWhiteImage.src = "./assets/images/resetwhite.png";

const resetBlackImage = new Image();
resetBlackImage.src = "./assets/images/resetblack.png";

const unblockMeImage = new Image();
unblockMeImage.src = "./assets/images/unblock.png";

const playButtonImage = new Image();
playButtonImage.src = "./assets/images/playbutton.png";

const levelButton = new Image();
levelButton.src = "./assets/images/levelButton.png";

const homeImage = new Image();
homeImage.src = "./assets/images/home.png";

let bgSound  = new Audio(src = "./assets/sound/bg1.mp3");


let levelCompleteSound = new Audio(src = "./assets/sound/levelcomplete.mp3")

let swipeSound = new Audio(src = "./assets/sound/swipe.mp3");

let sounds = {
  bg: bgSound,
  levelComplete: levelCompleteSound,
  swipe: swipeSound,
};

// sounds.swipe.play();

let mouseStates = {
  isDragging,
  isStartCount,
  oldX,
  oldY,
  dx,
  dy,
};

let rect = canvas.getBoundingClientRect();

let sprites = {
  baseImage: baseImage,
  pauseImage: pauseImage,
  resetWhiteImage: resetWhiteImage,
  resetBlackImage:resetBlackImage,
  unblockMeImage: unblockMeImage,
  playButtonImage: playButtonImage,
  levelButton: levelButton,
  homeImage: homeImage,
};


if(!window.localStorage.getItem('recordMoves'))
window.localStorage.setItem("recordMoves", JSON.stringify([]));

let game = new Game(
  canvas,
  ctx,
  rect,
  sprites,
  mouseStates,
  sounds,
//   recordMoves
);

function main() {
  console.log("main called");
  game.initialize();
  function animate() {
    ctx.clearRect(0, 0, canvas.width, canvas.height);

    game.draw();

    requestAnimationFrame(animate);
  }
  animate();
}

main();
