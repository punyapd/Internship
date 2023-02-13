let home = {
  x: 200,
  y: 690,
};

let pause = {
  x: 300,
  y: 690,
};

let reset = {
  x: 400,
  y: 690,
};

class GameDetails {
  constructor(ctx, sprites, game) {
    (this.sprites = sprites), (this.ctx = ctx);
    this.game = game;
  }

  draw(currentLevel, movesCount) {
    this.drawBaseImage();
    this.displayLevell();
    this.displayMoves(movesCount);
    this.controlButtons();
    //game reset and pause buttons
  }

  drawBaseImage() {
    this.ctx.drawImage(this.sprites.baseImage, 0, 605, 600, 200);
  }

  displayMoves() {
    let record = window.localStorage.getItem("recordMoves");
    if (record == "[" || record == null) {
      record = "";
    } else {
      record = JSON.parse(window.localStorage.getItem("recordMoves"))[
        this.game.currentLevel
      ];
    }
    // record = record == undefined ? record[this.game.currentLevel] : ""
    this.ctx.fillStyle = "white";

    this.ctx.fillText("Moves :" + this.game.movesCount, 150, 660);
    this.ctx.fillText(record ? "Record Moves : " + record : "", 350, 660);
  }

  displayLevell() {
    this.ctx.fillStyle = "white";

    this.ctx.font = "30px verdana";
    this.ctx.fillText("Level:" + (this.game.currentLevel + 1), 10, 660);
  }

  controlButtons() {
    this.ctx.strokeStyle = "white";
    this.ctx.shadowBlur = 20;
    this.ctx.shadowColor = "white";
    this.ctx.beginPath();

    this.ctx.strokeRect(200, 690, 50, 50);
    this.ctx.drawImage(this.sprites.homeImage, 210, 700, 30, 30);
    
    this.ctx.beginPath()
    this.ctx.strokeRect(300, 690, 50, 50);
    this.ctx.drawImage(this.sprites.pauseImage, 310, 700, 30, 30);


    this.ctx.beginPath()

    this.ctx.strokeRect(400, 690, 50, 50);
    this.ctx.drawImage(
      this.game.movesCount > 0
        ? this.sprites.resetWhiteImage
        : this.sprites.resetBlackImage,
      410,
      700,
      30,
      30
    );

  }

  //handle go to main menu
  handleHomeButton(event) {
    let currentX = event.clientX - this.game.canvas.offsetLeft;
    let currentY = event.clientY - this.game.canvas.offsetTop;

    if (
      currentX >= home.x &&
      currentX <= home.x + 50 &&
      currentY >= home.y &&
      currentY <= home.y + 50
    ) {
      this.game.sounds.swipe.play();

      this.game.state = "READY";
      this.game.sounds.bg.play();
      this.ctx.clearRect(0, 0, this.game.canvas.width, this.game.canvas.height);
    }
  }

  //handle pause button

  handlePauseButton(event) {
    let currentX = event.clientX - this.game.canvas.offsetLeft;
    let currentY = event.clientY - this.game.canvas.offsetTop;

    if (
      currentX >= pause.x &&
      currentX <= pause.x + 50 &&
      currentY >= pause.y &&
      currentY <= pause.y + 50
    ) {
      this.game.sounds.swipe.play();

      this.game.state = "PAUSE";
      this.ctx.clearRect(0, 0, this.game.canvas.width, this.game.canvas.height);
    }
  }

  //handle reset button

  handleResetButton(event) {
    let currentX = event.clientX - this.game.canvas.offsetLeft;
    let currentY = event.clientY - this.game.canvas.offsetTop;

    if (
      currentX >= reset.x &&
      currentX <= reset.x + 50 &&
      currentY >= reset.y &&
      currentY <= reset.y + 50
    ) {
      this.resetLevel();
    }
  }

  resetLevel() {
    if (this.game.movesCount > 0) {
      this.game.sounds.swipe.play();
    }

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
