class Pipe {
  constructor(
    x,
    downy,
    width,
    pipeDownHeight,
    pipeUpHeight,
    ctx,
    obstacleUp,
    obstacleDown
  ) {
    this.downy = downy;
    this.x = x;
    this.pipeDownHeight = pipeDownHeight;
    this.pipeUpHeight = pipeUpHeight;
    this.width = width;
    this.speed = 2;
    this.ctx = ctx;
    this.obstacleUp = obstacleUp;
    this.obstacleDown = obstacleDown;
    this.scored = false;
  }

  draw() {
    this.ctx.drawImage(
      this.obstacleUp,
      this.x,
      0,
      this.width,
      this.pipeUpHeight
    );
    this.ctx.drawImage(
      this.obstacleDown,
      this.x,
      this.downy,
      this.width,
      this.pipeDownHeight
    );
  }

  update(pipes, baseY, bird) {
    this.x -= this.speed;
    let collison;
    for (let i in pipes) {
      collison = this.checkCollision(pipes[i], baseY, bird, gameScore);
      //update score
      if (pipes[i].x + pipes[i].width < bird.positionX && !this.scored && !collison) {
        this.scored = true;
        gameScore += 1;
        console.log("score", gameScore);
      }
      //remove pipe from array.
      if (pipes[i].x < -pipes[i].width) {
        pipes.splice(i, 1);
      }

    }

    return collison;
  }

  checkCollision(pipe, baseY, bird) {
    // console.log('pipe:' , pipe)
    if (
      (bird.positionX <= pipe.x + pipe.width &&
        bird.positionX + bird.width >= pipe.x &&
        bird.positionY + bird.height >= pipe.downy &&
        bird.positionY <= pipe.downy + pipe.pipeDownHeight) ||
      (bird.positionX <= pipe.x + pipe.width &&
        bird.positionX + bird.width >= pipe.x &&
        bird.positionY + bird.height >= 0 &&
        bird.positionY <= pipe.pipeUpHeight) ||
      bird.positionY + bird.height >= baseY
    ) {
      return true;
    } else {
      return false;
    }
  }
}
