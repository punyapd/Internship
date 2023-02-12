class StartScreen {
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
    this.game = game;
  }

  draw() {
    let grd = this.ctx.createLinearGradient(0, 0, 600, 600);
    grd.addColorStop(0, "blue");
    grd.addColorStop(1, "lightblue");

    // Fill with gradient
    ctx.fillStyle = grd;
    ctx.fillRect(this.x, this.y, this.canvas.width, this.canvas.height);

    this.ctx.drawImage(this.sprites.unblockMeImage, 150, 200, 300, 150);

    if (this.game.state == "READY") {
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
    this.ctx.fillStyle = "white";
    this.ctx.fillText("PLAY", 270, 435);
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
    this.ctx.fillStyle = "white";
    this.ctx.fillText("LEVELS", 270, 535);
  }

  //fucntion for handling the click on play button

  handlePlay(event) {
    let currentX = event.clientX - this.canvas.offsetLeft;
    let currentY = event.clientY - this.canvas.offsetTop;

    if (this.game.state == "READY" && (
      currentX >= this.playBtn.x &&
      currentX <= this.playBtn.x + this.playBtn.width &&
      currentY >= this.playBtn.y &&
      currentY <= this.playBtn.y + this.playBtn.height)
    ) {
       this.setPlay();
    }
  }

  //handle the click on level button
  handleLevel(event) {
    let currentX = event.clientX - this.canvas.offsetLeft;
    let currentY = event.clientY - this.canvas.offsetTop;

    if (this.game.state == "READY" && (
      currentX >= this.levelBtn.x &&
      currentX <= this.levelBtn.x + this.levelBtn.width &&
      currentY >= this.levelBtn.y &&
      currentY <= this.levelBtn.y + this.levelBtn.height)
    ) {
        this.game.sounds.swipe.play();
      this.game.state = "CHOOSElEVEL";
    }
  }

//reset and play
  setPlay(key){
    this.game.state = "PLAYING";
    this.game.sounds.swipe.play();

    this.game.currentLevel = 0;
    this.game.movesCount = 0;
    for (i = 0; i < levels[this.game.currentLevel][0].blocks.length; i++) {
      let upb = levels[this.game.currentLevel][0].blocks[i];
      let inb = initialPositions[this.game.currentLevel][i];

      upb.x = inb.x;
      upb.y = inb.y;
    }
  }
}
