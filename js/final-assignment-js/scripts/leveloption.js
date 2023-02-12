let levelBoxes = [
  {
    x: 25,
    y: 30,
  },
  {
    x: 175,
    y: 30,
  },
  {
    x: 325,
    y: 30,
  },
  {
    x: 475,
    y: 30,
  },
  {
    x: 25,
    y: 110,
  },
  {
    x: 175,
    y: 110,
  },
  {
    x: 325,
    y: 110,
  },
  {
    x: 475,
    y: 110,
  },
  {
    x: 25,
    y: 190,
  },
  {
    x: 175,
    y: 190,
  },
];

class DisplayLevelList {
  constructor(canvas, ctx, x, y, width, height, game) {
    this.canvas = canvas;
    this.ctx = ctx;
    this.x = x;
    this.y = y;
    this.height = height;
    this.width = width;
    this.game = game;
  }

  draw() {
    // this.ctx.clearRect(0, 0, this.canvas.width, this.canvas.height);
    let grd1 = this.ctx.createLinearGradient(0, 0, 600, 600);
    grd1.addColorStop(0, "blue");
    grd1.addColorStop(1, "lightblue");

    // Fill with gradient
    ctx.fillStyle = grd1;
    ctx.fillRect(this.x, this.y, this.canvas.width, this.canvas.height);

    this.drawLevelList();

    this.displayLevelText();
  }

  drawLevelList() {
    levelBoxes.map((item, key) => {
      this.ctx.beginPath();

      this.ctx.fillStyle = "#8E4506";

      this.ctx.roundRect(item.x, item.y, 100, 50, [20]);
      this.ctx.fill();
      this.displayLevelText(key, item.x, item.y);
    });
  }
  displayLevelText() {
    levelBoxes.map((item, key) => {
      this.ctx.fillStyle = "white";
      this.ctx.font = "16px verdana";
      this.ctx.fillText("LEVEL " + (key + 1), item.x + 20, item.y + 30);
    });
  }

  //handling the event when user click on specific level.
  handleLevelClick(event) {
    let currentX = event.clientX - this.canvas.offsetLeft;
    let currentY = event.clientY - this.canvas.offsetTop;
    levelBoxes.map((item, key) => {
      if (
        this.game.state == "CHOOSElEVEL" &&
        currentX >= item.x &&
        currentX <= item.x + 100 &&
        currentY >= item.y &&
        currentY <= item.y + 50
      ) {
        this.setLevel(key);
      }
    });
  }

  setLevel(key) {
    this.game.state = "PLAYING";
    this.game.currentLevel = key;
    this.game.movesCount = 0;
    for (i = 0; i < levels[this.game.currentLevel][0].blocks.length; i++) {
      let upb = levels[this.game.currentLevel][0].blocks[i];
      let inb = initialPositions[this.game.currentLevel][i];

      upb.x = inb.x;
      upb.y = inb.y;
    }
  }
}
