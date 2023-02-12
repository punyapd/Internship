class PauseScreen {
  constructor(
    canvas,
    ctx,
    x,
    y,
    width,
    height,
    sprites,
    playBtn,
    levelBtn,
    mouseStates,
    game
  ) {
    this.canvas = canvas;
    this.ctx = ctx;
    this.x = x;
    this.y = y;
    this.height = height;
    this.width = width;
    this.sprites = sprites;
    this.playBtn = playBtn;
    this.levelBtn = levelBtn;
    this.mouseStates = mouseStates;
    this.game = game;
  }

  draw() {
    let grd = this.ctx.createLinearGradient(0, 0, 500, 500);
    grd.addColorStop(0, "blue");
    grd.addColorStop(1, "lightblue");

    // Fill with gradient
    ctx.fillStyle = grd;
    ctx.fillRect(
      this.x,
      this.y,
      this.canvas.width - 200,
      this.canvas.height - 275
    );

    this.ctx.drawImage(this.sprites.unblockMeImage, 150, 200, 300, 150);

    if (this.game.state == "PAUSE") {
      this.playbutton();

      this.levelButton();
    }
  }

  playbutton() {
    this.ctx.beginPath();

    this.ctx.fillStyle = "#8E4506";
    this.ctx.roundRect(
      this.playBtn.x,
      this.playBtn.y,
      this.playBtn.width,
      this.playBtn.height,
      [30]
    );
    this.ctx.fill();
    this.ctx.font = "30px verdana";
    this.ctx.fillStyle = "black";
    this.ctx.fillText("RESUME", 250, 435);
  }

  levelButton() {
    this.ctx.beginPath();

    this.ctx.fillStyle = "#8E4506";
    this.ctx.roundRect(
      this.levelBtn.x,
      this.levelBtn.y,
      this.levelBtn.width,
      this.levelBtn.height,
      [30]
    );
    this.ctx.fill();
    this.ctx.font = "30px Arial";
    this.ctx.fillStyle = "black";
    this.ctx.fillText("RESTART", 250, 535);
  }

  //fucntion for handling the click on play button

  handleResume(event) {
    let currentX = event.clientX - this.canvas.offsetLeft;
    let currentY = event.clientY - this.canvas.offsetTop;

    if (
      this.game.state == "PAUSE" &&
      currentX >= this.playBtn.x &&
      currentX <= this.playBtn.x + this.playBtn.width &&
      currentY >= this.playBtn.y &&
      currentY <= this.playBtn.y + this.playBtn.height
    ) {
      this.game.sounds.swipe.play();

      this.game.state = "PLAYING";
      this.ctx.clearRect(0, 0, this.canvas.width, this.canvas.height);
    }
  }

  //handle the click on level button
  handleRestart(event) {
    let currentX = event.clientX - this.canvas.offsetLeft;
    let currentY = event.clientY - this.canvas.offsetTop;

    if (
      this.game.state == "PAUSE" &&
      currentX >= this.levelBtn.x &&
      currentX <= this.levelBtn.x + this.levelBtn.width &&
      currentY >= this.levelBtn.y &&
      currentY <= this.levelBtn.y + this.levelBtn.height
    ) {
       this.resetLevel()
    }
  }

  //function for resetting level
  resetLevel(){
    this.game.state = "PLAYING";
    this.game.movesCount = 0;
    for (i = 0; i < levels[this.game.currentLevel][0].blocks.length; i++) {
      let upb = levels[this.game.currentLevel][0].blocks[i];
      let inb = initialPositions[this.game.currentLevel][i];

      upb.x = inb.x;
      upb.y = inb.y;
    }
  }
}



