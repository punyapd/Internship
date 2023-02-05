class Bird {
  constructor(
    positionX,
    positionY,
    width,
    height,
    canvas,
    bluebird,
    game,
    BASE_HEIGHT
  ) {
    this.game = game;
    this.positionX = positionX;
    this.positionY = positionY;
    this.height = height;
    this.width = width;
    this.canvas = canvas;
    this.speedX = 0;
    this.speedY = 0;
    this.gravity = 0.2;
    this.gravitySpeed = 0;
    this.bluebird = bluebird;
    this.BASE_HEIGHT = BASE_HEIGHT;
  }

  draw() {
    ctx.drawImage(
      this.bluebird,
      this.positionX,
      this.positionY,
      this.width,
      this.height
    );
  }

  update() {

    if (this.positionY < this.canvas.height - BASE_HEIGHT - this.height) {
      this.gravitySpeed += this.gravity;
      this.positionX += this.speedX;
      this.positionY += Math.floor(this.speedY + this.gravitySpeed);
    }

  }
}
