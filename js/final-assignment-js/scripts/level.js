let i;
let prevx, prevy;

class Level {
  constructor(ctx, rect, mouseStates, movesCount, game) {
    this.ctx = ctx;
    this.rect = rect;
    this.recordMoves = null;
    this.mouseStates = mouseStates;
    this.movesCount = movesCount;
    this.game = game;
  }

  draw() {
    levels[this.game.currentLevel][0].blocks.map((block) => {
      this.ctx.beginPath();
      this.ctx.fillStyle = `${block.color}`;
      this.ctx.shadowColor = "black";
      this.ctx.shadowBlur = 5;
      this.ctx.rect(block.x, block.y, block.width, block.height);
      this.ctx.fill();
    });

  }

 

  mouseDown() {
    this.mouseStates.isDragging = true;
  }

  mouseUp() {
    this.mouseStates.isDragging = false;
    this.mouseStates.isStartCount = false;
  }

  mouseOut() {
    this.mouseStates.isDragging = false;
  }

  moveBlocks(event) {
    event.preventDefault();
    if (this.mouseStates.isDragging) {
      let currentX = event.clientX - this.rect.x;
      let currentY = event.clientY - this.rect.y;

      this.getMouseDirection(currentX, currentY);

      this.game.levels[this.game.currentLevel][0].blocks.map((block) => {
        if (
          currentX >= block.x &&
          currentX <= block.x + block.width &&
          currentY >= block.y &&
          currentY <= block.y + block.height
        ) {
          this.mouseStates.isStartCount = true;
          prevx = block.x;
          prevy = block.y;

          let collision = this.checkBoundaryCollision(block);
          //implement all the scenarios of horizontal movement and horizontal collision
          this.horizontalCollisionCase(block, collision);
          this.verticalCollisionCase(block, collision);
        }
        if (block.isgoal == true) {
          let goalBlock = block;
          if (
            goalBlock.x == this.game.levels[this.game.currentLevel][0].goalX &&
            goalBlock.y == this.game.levels[this.game.currentLevel][0].goalY
          ) {
            if(goalBlock.x == 400){
                goalBlock.x += 100;
            }
            else{
                goalBlock.x -= 100
            }
            this.game.sounds.levelComplete.play();
            let record = JSON.parse(window.localStorage.getItem("recordMoves"));
            if (
              record[this.game.currentLevel] == null ||
              record[this.game.currentLevel] > this.game.movesCount
            ) {
              record[this.game.currentLevel] = this.game.movesCount;
              window.localStorage.setItem(
                "recordMoves",
                JSON.stringify(record)
              );
            }
             
            this.game.state = "COMPLETED";
          }
        }
      });
    }
  }

  getMouseDirection(currentX, currentY) {
    if (this.mouseStates.oldX < currentX) {
      this.mouseStates.dx = "right";
    } else {
      this.mouseStates.dx = "left";
    }

    //deal with the vertical case
    if (this.mouseStates.oldY < currentY) {
      this.mouseStates.dy = "down";
    } else {
      this.mouseStates.dy = "up";
    }

    this.mouseStates.oldX = currentX;
    this.mouseStates.oldY = currentY;
  }

  // for checking the boundary collisions
  checkBoundaryCollision(block) {
    let collisionBoundaryLeft;
    let collisionBoundaryRight;
    let collisionBoundaryTop;
    let collisionBoundaryBottom;
    //check collision for left boundary
    if (block.x <= 0) {
      collisionBoundaryLeft = true;
    }

    //check collision for right boundary
    if (block.x + block.width >= canvas.width) {
      collisionBoundaryRight = true;
    }

    //cehck collision for top boundary
    if (block.y <= 0) {
      collisionBoundaryTop = true;
    }

    //check collision for bottom boundary
    if (block.y + block.height >= canvas.height - 150) {
      collisionBoundaryBottom = true;
    }

    return {
      left: collisionBoundaryLeft,
      right: collisionBoundaryRight,
      top: collisionBoundaryTop,
      bottom: collisionBoundaryBottom,
    };
  }

  hasHorizonalCollision(block) {
    if (this.checkLeftCollision(block) && this.rightCollision(block))
      return "bothCollision";
    else if (this.checkLeftCollision(block) && !this.rightCollision(block)) {
      return "leftCollision";
    } else if (this.rightCollision(block) && !this.checkLeftCollision(block)) {
      return "rightCollision";
    }
  }

  //check verticla collision
  hasVerticalCollision(block) {
    if (this.topCollision(block) && this.bottomCollision(block))
      return "bothCollision";
    else if (this.topCollision(block) && !this.bottomCollision(block)) {
      return "topCollision";
    } else if (this.bottomCollision(block)) {
      return "bottomCollision";
    }
  }

  //checks collision for the box left side.

  checkLeftCollision(block) {
    let blockIndex = this.game.levels[
      this.game.currentLevel
    ][0].blocks.findIndex((i) => i.x == block.x && i.y == block.y);

    for (
      let i = 0;
      i < this.game.levels[this.game.currentLevel][0].blocks.length;
      i++
    ) {
      if (i !== blockIndex) {
        let obstacle = this.game.levels[this.game.currentLevel][0].blocks[i];
        if (
          block.x == obstacle.width + obstacle.x &&
          this.yHorz(block, obstacle)
        ) {
          return true;
        }
      }
    }
  }

  //checks x coordinates for collision on the block's right side
  rightCollision(block) {
    let blockIndex = this.game.levels[
      this.game.currentLevel
    ][0].blocks.findIndex((i) => i.x == block.x && i.y == block.y);

    for (
      let i = 0;
      i < this.game.levels[this.game.currentLevel][0].blocks.length;
      i++
    ) {
      if (i !== blockIndex) {
        let obstacle = this.game.levels[this.game.currentLevel][0].blocks[i];
        if (
          block.x + block.width == obstacle.x &&
          this.yHorz(block, obstacle)
        ) {
          return true;
        }
      }
    }
  }

  //check y coordinates for collision on the block top side
  topCollision(block) {
    let blockIndex = this.game.levels[
      this.game.currentLevel
    ][0].blocks.findIndex((i) => i.x == block.x && i.y == block.y);
    for (
      let i = 0;
      i < this.game.levels[this.game.currentLevel][0].blocks.length;
      i++
    ) {
      if (i !== blockIndex) {
        let obstacle = this.game.levels[this.game.currentLevel][0].blocks[i];
        if (
          block.y == obstacle.y + obstacle.height &&
          this.xVert(block, obstacle)
        ) {
          return true;
        }
      }
    }
  }

  //check y  coordinates for collision on the block bottom side.
  bottomCollision(block) {
    let blockIndex = this.game.levels[
      this.game.currentLevel
    ][0].blocks.findIndex((i) => i.x == block.x && i.y == block.y);
    for (
      i = 0;
      i < this.game.levels[this.game.currentLevel][0].blocks.length;
      i++
    ) {
      if (i !== blockIndex) {
        let obstacle = this.game.levels[this.game.currentLevel][0].blocks[i];
        if (
          block.y + block.height == obstacle.y &&
          this.xVert(block, obstacle)
        ) {
          return true;
        }
      }
    }
  }

  //checks if the top of the block being moved is between the top and bottom coordinates of the obstacle,
  // then checks if the bottom  of the block being moved is between the top and bottom coordinates of the obstacle
  yHorz(block, obstacle) {
    if (
      (obstacle.y < block.y && block.y < obstacle.y + obstacle.height) ||
      (obstacle.y < block.y + block.height &&
        block.y + block.height < obstacle.y + obstacle.height)
    ) {
      return true;
    } else if (
      obstacle.y == block.y &&
      block.y + block.height == obstacle.y + obstacle.height
    ) {
      return true;
    } else {
      return false;
    }
  }

  xVert(block, obstacle) {
    if (
      (obstacle.x < block.x && block.x < obstacle.x + obstacle.width) ||
      (obstacle.x < block.x + block.width &&
        block.x + block.width < obstacle.x + obstacle.width)
    ) {
      return true;
    } else if (
      obstacle.x == block.x &&
      block.x + block.width == obstacle.x + obstacle.width
    ) {
      return true;
    } else {
      return false;
    }
  }

  //horizonal movement and collison cases
  horizontalCollisionCase(block, collision) {
    switch (this.hasHorizonalCollision(block)) {
      case "bothCollision":
        this.mouseStates.isStartCount = false;
        break;
      case "leftCollision":
        if (
          block.direction == "hor" &&
          this.mouseStates.dx == "right" &&
          !collision.right
        ) {
          block.x = block.x + 100;
          if (prevx !== block.x) {
            this.game.movesCount++;
            sounds.swipe.play();
          }
        }

        break;
      case "rightCollision":
        if (
          block.direction == "hor" &&
          this.mouseStates.dx == "left" &&
          !collision.left
        ) {
          block.x = block.x - 100;
          if (prevx !== block.x) {
            this.game.movesCount++;
            sounds.swipe.play();
          }
        }
        break;
      default:
        if (
          block.direction == "hor" &&
          this.mouseStates.dx == "right" &&
          !collision.right
        ) {
          block.x = block.x + 100;
          if (prevx !== block.x) {
            this.game.movesCount++;
            sounds.swipe.play();
          }
        }
        if (
          block.direction == "hor" &&
          this.mouseStates.dx == "left" &&
          !collision.left
        ) {
          block.x = block.x - 100;
          if (prevx !== block.x) {
            this.game.movesCount++;
            sounds.swipe.play();
          }
        }
    }
  }

  //vertical movement and collison cases;
  verticalCollisionCase(block, collision) {
    switch (this.hasVerticalCollision(block)) {
      case "bothCollision":
        break;
      case "topCollision":
        if (
          block.direction == "ver" &&
          this.mouseStates.dy == "down" &&
          !collision.bottom
        ) {
          block.y = block.y + 100;
          //   this.game.movesCount++;

          if (prevy !== block.x) {
            this.game.movesCount++;
            sounds.swipe.play();
          }
        }
        break;
      case "bottomCollision":
        if (
          block.direction == "ver" &&
          this.mouseStates.dy == "up" &&
          !collision.top
        ) {
          block.y = block.y - 100;
          if (prevy !== block.x) {
            this.game.movesCount++;
            sounds.swipe.play();
          }
          //   this.game.movesCount++;
        }
        break;
      default:
        if (
          block.direction == "ver" &&
          this.mouseStates.dy == "down" &&
          !collision.bottom
        ) {
          block.y = block.y + 100;
          if (prevy !== block.x) {
            this.game.movesCount++;
            sounds.swipe.play();
          }
        }
        if (
          block.direction == "ver" &&
          this.mouseStates.dy == "up" &&
          !collision.top
        ) {
          block.y = block.y - 100;
          if (prevy !== block.x) {
            this.game.movesCount++;
            sounds.swipe.play();
          }
        }
    }
  }
}
