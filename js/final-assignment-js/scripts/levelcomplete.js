class LevelCompelte {
  constructor(
    canvas,
    ctx,
    rect,
    sprites,
    x,
    y,
    width,
    height,
    nextLevelBtn,
    homeBtn,
    game
  ) {
    this.canvas = canvas;
    this.ctx = ctx;
    this.rect = rect;
    this.sprites = sprites;
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
    this.nextLevelBtn = nextLevelBtn;
    this.homeBtn = homeBtn;
    this.game = game;
  }

  draw() {
    let record = JSON.parse(window.localStorage.getItem("recordMoves"))[
      this.game.currentLevel
    ];

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

    this.ctx.fillStyle = "white";
    this.ctx.fillText(
      "Level " + (this.game.currentLevel + 1) + " completed !!",
      150,
      200,
      300,
      150
    );
    this.ctx.fillText(
      "Your Moves: " + this.game.movesCount,
      150,
      240,
      300,
      150
    );

    this.ctx.fillText("Record Moves: " + record, 150, 290, 300, 150);

    // if (this.game.state == "COMPLETED") {
    if (this.game.currentLevel !== 9) {
      this.handleNextButton();
    } else {
      this.ctx.fillStyle = "red";
      this.ctx.fillText(" Congratualtions!! You have ", 100, 400);

      this.ctx.fillText(" completed all levels", 150, 430);
    }
    this.homeButton();

    //   }
  }

  handleNextButton() {
    this.ctx.beginPath();

    this.ctx.fillStyle = "#8E4506";
    this.ctx.fillRect(
      this.nextLevelBtn.x,
      this.nextLevelBtn.y,
      this.nextLevelBtn.width,
      this.nextLevelBtn.height,
      
    );
    this.ctx.fill();
    this.ctx.font = "30px verdana";
    this.ctx.fillStyle = "black";
    this.ctx.fillText("NEXT", 250, 435);
  }

  homeButton() {
    this.ctx.beginPath();

    this.ctx.fillStyle = "#8E4506";
    this.ctx.fillRect(
      this.homeBtn.x,
      this.homeBtn.y,
      this.homeBtn.width,
      this.homeBtn.height,
      
    );
    this.ctx.fill();
    this.ctx.font = "30px Arial";
    this.ctx.fillStyle = "black";
    this.ctx.fillText("HOME", 250, 535);
  }

  //hadnle click on next
  handleNext(event) {
    let currentX = event.clientX - this.canvas.offsetLeft;
    let currentY = event.clientY - this.canvas.offsetTop;

    if (
      this.game.state == "COMPLETED" &&
      currentX >= this.nextLevelBtn.x &&
      currentX <= this.nextLevelBtn.x + this.nextLevelBtn.width &&
      currentY >= this.nextLevelBtn.y &&
      currentY <= this.nextLevelBtn.y + this.nextLevelBtn.height
    ) {
     this.setNextLevel()
    }
  }

  //handle the click on home button
  handleHome(event) {
    let currentX = event.clientX - this.canvas.offsetLeft;
    let currentY = event.clientY - this.canvas.offsetTop;

    if (
      this.game.state == "COMPLETED" &&
      currentX >= this.homeBtn.x &&
      currentX <= this.homeBtn.x + this.homeBtn.width &&
      currentY >= this.homeBtn.y &&
      currentY <= this.homeBtn.y + this.homeBtn.height
    ) {
      this.game.sounds.swipe.play();

      this.game.state = "READY";
    }
  }

  //handle next level;
  setNextLevel(key) {
    this.game.state = "PLAYING";
    this.game.sounds.levelComplete.pause();
    this.game.sounds.swipe.play();

    this.game.currentLevel++;
    this.game.movesCount = 0;
    for (i = 0; i < levels[this.game.currentLevel][0].blocks.length; i++) {
      let upb = levels[this.game.currentLevel][0].blocks[i];
      let inb = initialPositions[this.game.currentLevel][i];

      upb.x = inb.x;
      upb.y = inb.y;
    }
  }
}
