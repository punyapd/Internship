class InputHandlers {
  constructor(block , startScreen , displayLevelList , gameDetails , pauseScreen  , levelComplete) {
    this.block = block;
    this.startScreen = startScreen
    this.dislplayLevelList = displayLevelList;
    this.gameDetails = gameDetails;
    this.pauseScreen = pauseScreen;
    this.levelComplete = levelComplete;
    document.addEventListener("mousedown", () => this.handleMouseDown());

    document.addEventListener("mouseup", () => this.handleMouseUp());
    document.addEventListener(
      "mouseout",
      //   block.mouseOut(this.isDragging);
      () => this.handleMouseOut()
    );

    document.addEventListener("mousemove", (event) =>
      this.handleMouseMove(event)
    );

    //event listener for click on play button

    document.addEventListener('click' , (event)=>this.handleButtons(event))
  }

  handleMouseDown() {
    this.block.mouseDown();
  }

  handleMouseUp() {
    this.block.mouseUp();
  }

  handleMouseOut() {
    this.block.mouseOut();
  }

  handleMouseMove(event) { 
    this.block.moveBlocks(event);
  }

//handle play ,  level , home , pause , reset button on startscreen
  handleButtons(event){
      this.startScreen.handlePlay(event)
      this.startScreen.handleLevel(event)

      //handle the specific level clicked by user fron level lists
      this.dislplayLevelList.handleLevelClick(event)

      //handle go to main menu
      this.gameDetails.handleHomeButton(event);

      //handle pause 
      this.gameDetails.handlePauseButton(event);

      //HANDLE RESET
      this.gameDetails.handleResetButton(event);

      //handle  resume
      this.pauseScreen.handleResume(event);

      //handle restart
      this.pauseScreen.handleRestart(event);

      //handle next on level complete;
      this.levelComplete.handleNext(event);

      //hendle go to home on level complete;
      this.levelComplete.handleHome(event)
      
  }


  
}
