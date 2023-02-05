class Base {
  constructor(x, y, width, height, ctx, spritebase, canvas) {
    this.x = x;
    this.y = y;
    this.height = height;
    this.width = width;
    this.ctx = ctx;
    this.spritebase = spritebase;
    this.canvas = canvas;
  }

  draw() {
    this.ctx.drawImage(
      this.spritebase,
      this.x,
      this.y,
      this.width,
      this.height
    );
    this.ctx.drawImage(
      this.spritebase,
      this.x + this.width,
      this.y,
      this.width,
      this.height
    );
    //draw;
  }

  update() {
    this.x -= 3;
    if (this.x <= -this.width) {
      this.x = 0;
    }
  }
}
