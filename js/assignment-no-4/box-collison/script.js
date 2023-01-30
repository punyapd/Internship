const BOX_WIDTH = 40;
const BOX_HEIGHT = 40;
const CONTAINER_WIDTH = 600;
CONTAINER_HEIGHT = 600;
const SPEED = 10;
const NUMBER_OF_BOXES = 10;

function main() {
  let body = document.querySelector("body");

  let container = createContainer(body);
  let container1 = createContainer(body)
  container1.classList.add('container1')
  //running first instance
   instance(container);
  
   //running second instance
   instance(container1)
  
}

//function for creating the main container
function createContainer(parent) {
  let container = document.createElement("div");
  container.setAttribute("class", "container");
  parent.appendChild(container);
  return container;
}

//function for running different instances
function instance(container){
  let boxes = [];
  for (i = 0; i < NUMBER_OF_BOXES; i++) {
    let box = createBox(container);
    let overlaps = boxes.some((rect) => checkOverlap(box, rect));
    while (overlaps) {
      box = createBox(container);
      overlaps = boxes.some((rect) => checkOverlap(box, rect));
    }
    drawBox(container, box.element);
    boxes.push(box);
  }
  console.log("boxes: ", boxes);
  setInterval(() => {
    moveBoxes(boxes);
    detectCollision(boxes);
  }, 10);
}

function createBox(parent) {
  let boxElement = document.createElement("div");
  boxElement.style.width = BOX_WIDTH + "px";
  boxElement.style.height = BOX_HEIGHT + "px";
  boxElement.style.left =
    Math.abs(Math.floor(Math.random() * CONTAINER_WIDTH - BOX_WIDTH)) + "px";
  boxElement.style.top =
    Math.abs(Math.floor(Math.random() * CONTAINER_HEIGHT - BOX_HEIGHT)) + "px";
  boxElement.setAttribute("class", "box");
  return {
    element: boxElement,
    directionX: 1,
    directionY: 1,
    INITIAL_POSITION_X: parseInt(boxElement.style.left),
    INITIAL_POSITION_Y: parseInt(boxElement.style.top),
  };
}

//function for drawing the boxes
function drawBox(parent, boxElement) {
  parent.appendChild(boxElement);
}

//function for checking the overlap of randomly generated boxes
function checkOverlap(box1, box2) {
  if (
    box1.INITIAL_POSITION_X <= box2.INITIAL_POSITION_X &&
    box1.INITIAL_POSITION_X + BOX_WIDTH >= box2.INITIAL_POSITION_X + BOX_WIDTH &&
    box1.y <= box2.INITIAL_POSITION_Y &&
    box1.INITIAL_POSITION_Y + BOX_HEIGHT >= box2.INITIAL_POSITION_Y + BOX_HEIGHT
  ) {
    return true;
  }
  // Check for partial overlap
  if (
    box1.INITIAL_POSITION_X < box2.INITIAL_POSITION_X + BOX_WIDTH &&
    box1.INITIAL_POSITION_X + BOX_WIDTH > box2.INITIAL_POSITION_X &&
    box1.INITIAL_POSITION_Y < box2.INITIAL_POSITION_Y + BOX_HEIGHT &&
    box1.INITIAL_POSITION_Y + BOX_HEIGHT > box2.INITIAL_POSITION_Y
  ) {
    return true;
  }
  return false;
}

function moveBoxes(boxes) {
  boxes.forEach((box) => {
    if (
      parseInt(BOX_WIDTH) + parseInt(box.element.style.left) >=
      CONTAINER_WIDTH
    ) {
      box.directionX = -1;
    } else if (parseInt(box.element.style.left) <= 0) {
      box.directionX = 1;
    }

    if (
      parseInt(BOX_HEIGHT) + parseInt(box.element.style.top) >=
      CONTAINER_HEIGHT
    ) {
      box.directionY = -1;
    } else if (parseInt(box.element.style.top) <= 0) {
      box.directionY = 1;
    }

    let NEW_POSITION_X = box.INITIAL_POSITION_X + box.directionX * SPEED;
    let NEW_POSITION_Y = box.INITIAL_POSITION_Y + box.directionY * SPEED;
    box.element.style.left = NEW_POSITION_X + "px";
    box.element.style.top = NEW_POSITION_Y + "px";
    box.INITIAL_POSITION_X = NEW_POSITION_X;
    box.INITIAL_POSITION_Y = NEW_POSITION_Y;
  });
}

//function for detecting the collison
function detectCollision(boxes) {
  for (let i = 0; i < boxes.length; i++) {
    for (let j = i + 1; j < boxes.length; j++) {
      let box1 = boxes[i];
      let box2 = boxes[j];

      // Check for horizontal collision
      let collideHorizontal = checkHorzontalCollision(box1, box2);
      if (collideHorizontal) {
        box1.directionX = box1.directionX * -1;
        box2.directionX = box2.directionX * -1;
      }
      // Check for vertical collision
      let collideVertical = checkVerticalCollision(box1, box2);
      if (collideVertical) {
        box1.directionY = box1.directionY * -1;
        box2.directionY = box2.directionY * -1;
      }
    }
  }
}

//function for horizontal collison detection.
function checkHorzontalCollision(box1, box2) {
  if (
    box1.INITIAL_POSITION_X < box2.INITIAL_POSITION_X + BOX_WIDTH &&
    box1.INITIAL_POSITION_X + BOX_WIDTH > box2.INITIAL_POSITION_X &&
    box1.INITIAL_POSITION_Y < box2.INITIAL_POSITION_Y + BOX_HEIGHT &&
    BOX_HEIGHT + box1.INITIAL_POSITION_Y > box2.INITIAL_POSITION_Y
  ) {
    return true;
  }
}

//function for vertical collilson detection.
function checkVerticalCollision(box1, box2) {
  if (
    box1.INITIAL_POSITION_Y < box2.INITIAL_POSITION_Y + BOX_HEIGHT &&
    box1.INITIAL_POSITION_Y + BOX_HEIGHT > box2.INITIAL_POSITION_Y &&
    box1.INITIAL_POSITION_X < box2.INITIAL_POSITION_X + BOX_WIDTH &&
    BOX_WIDTH + box1.INITIAL_POSITION_X > box2.INITIAL_POSITION_X
  ) {
    return true;
  }
}

main();
