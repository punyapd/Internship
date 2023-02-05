class Gameover {
  constructor(canvas, ctx, sprites, restartData) {
    this.canvas = canvas;
    this.ctx = ctx;
    this.sprites = sprites;
    this.restartData = restartData;
  }

  draw() {
    this.ctx.drawImage(
      this.sprites.gameOverImage,
      this.canvas.width / 3,
      this.canvas.height / 2 - 50,
      200,
      100
    );
    this.ctx.drawImage(
      this.sprites.restartImage,
      this.restartData.x,
      this.restartData.y,
      this.restartData.width,
      this.restartData.height
    );
  }
}
