class StartScreen {
  constructor() {
    this.isSpacePressed = false;
  }
  draw() {
    let startScreen = document.querySelector(".start-screen");
    let canvasElement = document.querySelector("#flappy-bird");
    let buttonElement = document.createElement("button");
    buttonElement.setAttribute("class", "start-button");
    buttonElement.append("PRESS SPACE TO START ");

    startScreen.appendChild(buttonElement);

    buttonElement.addEventListener(
      "click",
      this.handleClick(this.isSpacePressed, startScreen, canvasElement)
    );

    return this.isSpacePressed;
  }

  handleClick(isSpacePressed , startScreen , canvasElement) {
    startScreen.style.display = "none";
    canvasElement.style.display = "block";
    isSpacePressed = true;
  }
}
