const GAME_STATE = {
  READY: "READY",
  PLAYING: "PLAYING",
  CHOOSElEVEL: "CHOOSElEVEL",
  PAUSE: "PAUSE",
  COMPLETED: "COMPLETED",
  OVER: "OVER",
};

playBtn = {
  x: 150,
  y: 400,
  width: 300,
  height: 50,
};

levelBtn = {
  x: 150,
  y: 500,
  width: 300,
  height: 50,
};

class Game {
  constructor(canvas, ctx, rect, sprites, mouseStates, sounds) {
    this.canvas = canvas;
    this.ctx = ctx;
    this.rect = rect;
    this.sprites = sprites;
    this.levels = levels;
    this.mouseStates = mouseStates;
    this.currentLevel = 0;
    this.movesCount = 0;
    this.state = GAME_STATE.READY;
    this.level = null;
    this.sounds = sounds;
    // this.recordMoves = recordMoves;
  }
  
  initialize() {
    //

    //intialzize start screen
    this.startScreen = new StartScreen(
      this.canvas,
      this.ctx,
      0,
      0,
      this.canvas.width,
      this.canvas.height,
      this.sprites,
      playBtn,
      levelBtn,
      this
    );

    //initialize pause screen
    this.pauseScreen = new PauseScreen(
      this.canvas,
      this.ctx,
      100,
      150,
      this.canvas.width - 100,
      this.canvas.height - 100,
      this.sprites,
      playBtn,
      levelBtn,
      this.mouseStates,
      this,
      this.initialPositions
    );
    //initialize levels list screen
    this.displayLevelList = new DisplayLevelList(
      this.canvas,
      this.ctx,
      0,
      0,
      this.canvas.width,
      canvas.height,
      this
    );

    //initialize levels
    this.level = new Level(
      this.ctx,
      this.rect,
      this.mouseStates,
      this.movesCount,
      this
    );
    this.gameDetails = new GameDetails(this.ctx, this.sprites, this);

    //intialize level completer screen.
    this.levelComplete = new LevelCompelte(
      this.canvas,
      this.ctx,
      this.rect,
      this.sprites,
      100,
      150,
      this.canvas.width - 100,
      this.canvas.height - 100,
      playBtn,
      levelBtn,
      this
    );

    //initalize input handlers
    this.handler = new InputHandlers(
      this.level,
      this.startScreen,
      this.displayLevelList,
      this.gameDetails,
      this.pauseScreen,
      this.levelComplete
    );
  }

  draw() {
    switch (this.state) {
      case GAME_STATE.READY:
        this.startScreen.draw();
        break;
      case GAME_STATE.CHOOSElEVEL:
        this.sounds.bg.play();
        this.displayLevelList.draw();
        break;
      case GAME_STATE.PLAYING:
        this.sounds.bg.pause();
        this.level.draw();
        this.gameDetails.draw(this.currentLevel, this.movesCount);
        break;
      case GAME_STATE.PAUSE:
        this.sounds.bg.play();
        this.pauseScreen.draw();
        break;

      case GAME_STATE.COMPLETED:
        this.levelComplete.draw();
        break;
      default:
        console.log("hhhh");
    }
  }

  
}
