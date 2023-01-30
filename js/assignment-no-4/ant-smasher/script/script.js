const CANVAS_WIDTH = 1000;

const CANVAS_HEIGHT = 600;
const BOX_HEIGHT = 50;
const BOX_WIDTH = 50;
const NUMBER_OF_ANTS = 5;
const SPEED = 1;

function main() {
  let body = document.querySelector("body");
  let sound = addSound(body);

  let canvas = createCanvas(body);
  let ants = [];

  for (i = 0; i < NUMBER_OF_ANTS; i++) {
    let ant = createAnt(canvas.ctx);
    let overlaps = ants.some((item) => checkOverlap(ant, item));
    while (overlaps) {
      ant = createAnt(canvas.ctx);
      overlaps = ants.some((item) => checkOverlap(ant, item));
    }

    ants.push(ant);
    drawAnt(ant);

    setInterval(() => {
      canvas.ctx.clearRect(0, 0, CANVAS_WIDTH, CANVAS_HEIGHT);
      moveAnts(canvas.ctx, ants);
      detectCollision(ants);
    }, 300);
  }

 
  //   requestAnimationFrame((function(){
  //     console.log("animation fraem")
  //     animate(canvas.ctx , ants)
  // }))

  canvas.element.addEventListener("click", (e) =>
    handleCanvasClick(canvas, e, ants, sound)
  );

    
}

//function for handling click event
function handleCanvasClick(canvas, e, ants, sound) {
  let x = e.clientX - canvas.element.offsetLeft;
  let y = e.clientY - canvas.element.offsetTop;
  for (i = 0; i < ants.length; i++) {
    let ant = ants[i];
    if (
      x >= ant.POSITION_X &&
      x <= ant.POSITION_X + BOX_WIDTH &&
      y >= ant.POSITION_Y &&
      y <= ant.POSITION_Y + BOX_HEIGHT
    ) {
      ants.splice(i, 1);

      canvas.ctx.clearRect(0, 0, CANVAS_WIDTH, CANVAS_HEIGHT);
      sound.play();
    }
  
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
  return { element: canvas, ctx };
}

function createAnt(ctx) {
  POSITION_X = Math.abs(Math.floor(Math.random() * CANVAS_WIDTH - BOX_WIDTH));
  POSITION_Y = Math.abs(Math.floor(Math.random() * CANVAS_HEIGHT - BOX_HEIGHT));
  return {
    ctx: ctx,
    directionX: 1,
    directionY: 1,
    POSITION_X: POSITION_X,
    POSITION_Y: POSITION_Y,
  };
}

//function for drawing ant
function drawAnt(ant) {
  ant.ctx.fillStyle = "green";
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
function moveAnts(ctx, ants) {
  ctx.clearRect(0, 0, CANVAS_WIDTH, CANVAS_HEIGHT);
  ants.forEach((ant) => {
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
    POSITION_X = NEW_POSITION_X;
    POSITION_Y = NEW_POSITION_Y;
    ant.POSITION_X = NEW_POSITION_X;
    ant.POSITION_Y = NEW_POSITION_Y;
    drawAnt(ant);
  });
}

//function for detecting the collison
function detectCollision(ants) {
  for (let i = 0; i < ants.length; i++) {
    for (let j = i + 1; j < ants.length; j++) {
      let ant1 = ants[i];
      let ant2 = ants[j];

      // Check for horizontal collision
      let collideHorizontal = checkHorzontalCollision(ant1, ant2);
      if (collideHorizontal) {
        ant1.directionX = ant1.directionX * -1;
        ant2.directionX = ant2.directionX * -1;
      }
      // Check for vertical collision
      let collideVertical = checkVerticalCollision(ant1, ant2);
      if (collideVertical) {
        ant1.directionY = ant1.directionY * -1;
        ant2.directionY = ant2.directionY * -1;
      }
    }
  }
}

//function for horizontal collison detection.
function checkHorzontalCollision(ant1, ant2) {
  if (
    ant1.POSITION_X < ant2.POSITION_X + BOX_WIDTH &&
    ant1.POSITION_X + BOX_WIDTH > ant2.POSITION_X &&
    ant1.POSITION_Y < ant2.POSITION_Y + BOX_HEIGHT &&
    BOX_HEIGHT + ant1.POSITION_Y > ant2.POSITION_Y
  ) {
    return true;
  }
}

//function for vertical collilson detection.
function checkVerticalCollision(ant1, ant2) {
  if (
    ant1.POSITION_Y < ant2.POSITION_Y + BOX_HEIGHT &&
    ant1.POSITION_Y + BOX_HEIGHT > ant2.POSITION_Y &&
    ant1.POSITION_X < ant2.POSITION_X + BOX_WIDTH &&
    BOX_WIDTH + ant1.POSITION_X > ant2.POSITION_X
  ) {
    return true;
  }
}

//function for adding sound
function addSound(parent) {
  let audio = document.createElement("audio");
  audio.setAttribute("id", "clicksound");
  let source = document.createElement("source");
  source.setAttribute("src", "hit.mp3");
  source.setAttribute("type", "audio/mp3");
  audio.appendChild(source);
  parent.appendChild(audio);
  return audio;
}



main();
