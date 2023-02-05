const PIPE_GAP = 120;

const BIRD_WIDTH = 30;
const BIRD_HEIGHT = 30;
BASE_HEIGHT = 80;
let gameScore = 0;

let i;
class Game {
  constructor(canvas, sprites, ctx, restartData) {
    this.canvas = canvas;
    this.ctx = ctx;
    this.sprites = sprites;
    this.game_status = "start";
    this.pipes = [];
    this.restartData = restartData;
  }

  //game start
  start() {
    //initialie background
    this.bg = new Background(
      this.ctx,
      this.sprites.background,
      0,
      0,
      this.canvas.width,
      this.canvas.height - BASE_HEIGHT
    );
    //initialize bird object
    this.bird = new Bird(
      CANVAS_WIDTH / 2,
      CANVAS_HEIGHT / 2,
      BIRD_WIDTH,
      BIRD_HEIGHT,
      this.canvas,
      this.sprites.bluebird,
      BASE_HEIGHT
    );

    // genrate pipes in certain interval
    setInterval(this.generatePipes.bind(this), 2500);

    let bird = this.bird;
    //adding controls to the bird.
    this.game_status = this.handleGameStart(this.game_status, bird);

    //base object initalization
    this.base = new Base(
      0,
      this.canvas.height - BASE_HEIGHT,
      this.canvas.width,
      BASE_HEIGHT,
      this.ctx,
      this.sprites.spritebase,
      this.canvas
    );

    //inittalize game over
    this.gameover = new Gameover(
      this.canvas,
      this.ctx,
      this.sprites,
      this.restartData
    );
  }

  //end
  end(gameLoop) {
    this.gameover.draw();
    this.handleRestart(this.restartData, this.canvas, gameLoop, this.start);
  }

  //update

  update() {
    this.base.update();
    // console.log('this' , this.game_status);
    this.bird.update(this.game_status);
    for (i = 0; i < this.pipes.length; i++) {
      let isCollison = this.pipes[i].update(
        this.pipes,
        this.base.y,
        this.bird,
        gameScore
      );
      if (isCollison) {
        this.game_status = "end";
      }
    }
  }

  //draw bird and pipes
  draw() {
    //background draw
    this.bg.draw();
    // draw  pipes
    for (i = 0; i < this.pipes.length; i++) {
      this.pipes[i].draw();
    }

    //draw basse
    this.base.draw();

    this.bird.draw(); //draw bird
  }

  //function for generating pipes
  generatePipes() {
    let pipeUpHeight = Math.floor(Math.random() * (350 - 100) + 100);
    let pipeDownHeight = CANVAS_HEIGHT - pipeUpHeight - PIPE_GAP;
    const width = 80;
    const speed = 3;
    this.pipes.push(
      new Pipe(
        this.canvas.width + 10,
        pipeUpHeight + PIPE_GAP,
        width,
        pipeDownHeight,
        pipeUpHeight,
        this.ctx,
        this.sprites.obstacleUp,
        this.sprites.obstacleDown
      )
    );
  }

  //function for showing score
  showScore() {
    this.ctx.fillStyle = "black";
    this.ctx.font = "36px verdana"
    this.ctx.fillText("SCORE :" + parseInt(gameScore), 100, this.canvas.height-30);
    // this.ctx.fillRect
  }
  //handle game start
  handleGameStart(game_status, bird) {
    window.addEventListener("keydown", function (event) {
      if (event.key == " ") {
        game_status = "start";
        bird.gravitySpeed = 0;
        bird.positionY -= 60;
      }
    });
    return game_status;
  }

  //handling the game restart
  handleRestart(restartData, canvas, gameLoop, start) {
    window.addEventListener("click", function (event) {
      let rect = canvas.getBoundingClientRect();
      let x = event.clientX - rect.x;
      let y = event.clientY - rect.y;
      console.log("ol , ot", canvas.offsetLeft, canvas.offsetTop);
      console.log("x, y", x, y);
      console.log("cx , cy", event.clientX, event.clientY);
      console.log("restart data:", restartData);
      if (
        x >= restartData.x &&
        x <= restartData.x + restartData.width &&
        y >= restartData.y &&
        y <= restartData.y + restartData.height
      ) {
        document.location.reload();
      }
    });
  }
}
