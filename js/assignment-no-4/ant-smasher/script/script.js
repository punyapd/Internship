const CANVAS_WIDTH = 1000;

const CANVAS_HEIGHT = 600;
const BOX_HEIGHT = 50;
const BOX_WIDTH = 50;
const NUMBER_OF_ANTS = 20;
const SPEED = 10;

function main() {
    
  let body = document.querySelector("body");
  let canvas = createCanvas(body);
  let ants = [];
  for (i = 0; i < NUMBER_OF_ANTS; i++) {
    let ant = createAnt(canvas.ctx);
   
    let overlaps = ants.some((item) => checkOverlap(ant, item));
    while (overlaps) {
      ant = createAnt(canvas.ctx);
      overlaps = ants.some((item) => checkOverlap(ant, item));
    }

    drawAnt(ant);
    ants.push(ant);
    console.log("ants", ants);
 canvas.ctx.clearRect( 0 , 0 , CANVAS_WIDTH , CANVAS_HEIGHT)

    // requestAnimationFrame(()=> moveAnts(ants))
    setInterval(() => {
      moveAnts(ants, canvas.ctx);
    }, 1000);
    console.log("ant:", ant);
  }
}

function createCanvas(parent) {
  let canvas = document.createElement("canvas");
  canvas.setAttribute("id", "canvas");
  canvas.width = CANVAS_WIDTH;
  canvas.height = CANVAS_HEIGHT;
  canvas.style.backgroundColor = "aquamarine";
  const ctx = canvas.getContext("2d");
  parent.appendChild(canvas);
  return { canvas, ctx };
}

function createAnt(ctx) {
    
  POSITION_X = Math.abs(Math.floor(Math.random() * CANVAS_WIDTH - BOX_WIDTH));
  POSITION_Y = Math.abs(Math.floor(Math.random() * CANVAS_HEIGHT - BOX_HEIGHT));
  //   ctx.fillStyle = "orange";
  ctx.onClick
  return {
    ctx: ctx,
    directionX: 1,
    directionY: 1,
    POSITION_X: POSITION_X,
    POSITION_Y: POSITION_Y,
    // background:background
  };

}

//function for drawing box
function drawAnt(ant) {
  background = new Image();
  background.src = "./images/ant.png";
  background.onload = function () {
    ant.ctx.drawImage(background, ant.POSITION_X, ant.POSITION_Y);
  };
}

//function check overlaps
function checkOverlap(ant1, ant2) {
  if (
    ant1.POSITION_X <= ant2.POSITION_X &&
    ant1.POSITION_X + BOX_WIDTH >= ant2.POSITION_X + BOX_WIDTH &&
    ant1.POSITION_Y <= ant2.POSITION_Y &&
    ant1.POSITION_Y + BOX_HEIGHT >= ant2.POSITION_Y + BOX_HEIGHT
  ) {
    return true;
  }
  // Check for partial overlap
  if (
    ant1.POSITION_X < ant2.POSITION_X + BOX_WIDTH &&
    ant1.POSITION_X + BOX_WIDTH > ant2.POSITION_X &&
    ant1.POSITION_Y < ant2.POSITION_Y + BOX_HEIGHT &&
    ant1.POSITION_Y + BOX_HEIGHT > ant2.POSITION_Y
  ) {
    return true;
  }
  return false;
}

//function moveants
function moveAnts(ants, ctx) {
  ants.forEach((ant) => {
    //    ant.ctx.clearRect(ant.POSITION_X , ant.POSITION_Y , BOX_WIDTH + ant.POSITION_X , BOX_HEIGHT+ant.POSITION_Y)
    if (BOX_WIDTH + ant.POSITION_X >= CANVAS_WIDTH) {
      ant.directionX = -1;
    } else if (parseInt(ant.POSITION_X) <= 0) {
      ant.directionX = 1;
    }

    if (parseInt(BOX_HEIGHT) + parseInt(ant.POSITION_Y) >= CANVAS_HEIGHT) {
      ant.directionY = -1;
    } else if (parseInt(ant.POSITION_Y) <= 0) {
      ant.directionY = 1;
    }

    let NEW_POSITION_X = ant.POSITION_X + ant.directionX * SPEED;
    let NEW_POSITION_Y = ant.POSITION_Y + ant.directionY * SPEED;
    console.log("X: ",  NEW_POSITION_X)
    POSITION_X = NEW_POSITION_X;
    POSITION_Y = NEW_POSITION_Y;
    ant.POSITION_X = NEW_POSITION_X;
    ant.POSITION_Y = NEW_POSITION_Y;
  });
}

main();
