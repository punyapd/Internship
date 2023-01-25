buttons = [
  {
    id: "start-button",
    text: "start",
    disable: false,
  },
  {
    id: "stop-button",
    text: "stop",
    disable: true,
  },
  {
    id: "reset-button",
    text: "reset",
    disable: true,
  },
];

let main = document.getElementById("main");

let container = document.createElement("div");

container.setAttribute("class", "container");

//creating buttons for clock and stop watch
let buttonWrapper = document.createElement("div");
buttonWrapper.setAttribute("class", "button__wrapper");
let clockBtn = document.createElement("button");
clockBtn.setAttribute("id", "clock-button");
clockBtn.disabled = false;
let clockText = document.createTextNode("Clock");
clockBtn.appendChild(clockText);

let stopWatchBtn = document.createElement("button");
stopWatchBtn.setAttribute("id", "stopwatch-button");
let stopWatchText = document.createTextNode("Stopwatch");

stopWatchBtn.appendChild(stopWatchText);

buttonWrapper.appendChild(clockBtn);
buttonWrapper.appendChild(stopWatchBtn);
container.appendChild(buttonWrapper);

//code for clock
let clockDOM = document.createElement("div");
clockDOM.setAttribute("id", "clock");
container.appendChild(clockDOM);

//code for stopwatch
let stopWatchDOM = document.createElement("div");
stopWatchDOM.setAttribute("id", "stopwatch");
stopWatchDOM.style.display = "none";
let timeDOM = document.createElement("div");
timeDOM.setAttribute("id", "time");
stopWatchDOM.appendChild(timeDOM);
//buttons

buttons.map((btn) => {
  let btnDOM = document.createElement("button");
  btnDOM.setAttribute("id", btn.id);
  let text = document.createTextNode(btn.text);
  btnDOM.appendChild(text);
  btnDOM.disabled = btn.disable;
  stopWatchDOM.appendChild(btnDOM);
});

container.appendChild(stopWatchDOM);

main.appendChild(container);

function clock() {
  let date = new Date();
  let hh = date.getHours();
  let mm = date.getMinutes();
  let ss = date.getSeconds();
  let session = "AM";

  if (hh > 12) {
    session = "PM";
  }

  hh = hh < 10 ? "0" + hh : hh;
  mm = mm < 10 ? "0" + mm : mm;
  ss = ss < 10 ? "0" + ss : ss;

  let time = hh + ":" + mm + ":" + ss + " " + session;

  document.getElementById("clock").innerText = time;
  let t = setTimeout(function () {
    clock();
  }, 1000);

  clockBtn.addEventListener("click", toggleClock);
  stopWatchBtn.addEventListener("click", toggleStopwatch);
}

clock();

function stopwatch() {
  let startTime;
  let intervalId;
  let time = 0;

  function start() {
    startTime = Date.now();
    intervalId = setInterval(update, 10);
    document.getElementById("start-button").disabled = true;
    document.getElementById("stop-button").disabled = false;
    document.getElementById("reset-button").disabled = true;
  }

  function stop() {
    clearInterval(intervalId);
    document.getElementById("start-button").disabled = false;
    document.getElementById("stop-button").disabled = true;
    document.getElementById("reset-button").disabled = false;
  }

  function reset() {
    time = 0;
    document.getElementById("time").innerHTML = "00:00:00";
    document.getElementById("start-button").disabled = false;
    document.getElementById("stop-button").disabled = true;
    document.getElementById("reset-button").disabled = true;
  }

  function update() {
    let currentTime = Date.now();

    time += currentTime - startTime;
    startTime = currentTime;
    let formattedTime = formatTime(time);
    document.getElementById("time").innerHTML = formattedTime;
  }

  function formatTime(time) {
    let minutes = Math.floor(time / 60000);
    let seconds = Math.floor((time % 60000) / 1000);
    let milliseconds = time % 1000;
    minutes = minutes.toString().padStart(2, "0");
    seconds = seconds.toString().padStart(2, "0");
    milliseconds = milliseconds.toString();
    return `${minutes}:${seconds}:${milliseconds}`;
  }

  document.getElementById("start-button").addEventListener("click", start);
  document.getElementById("stop-button").addEventListener("click", stop);
  document.getElementById("reset-button").addEventListener("click", reset);
}

stopwatch();

function toggleClock() {
  clockDOM.style.display = "block";

  stopWatchDOM.style.display = "none";
  clockBtn.style.backgroundColor = "aquamarine";
  stopWatchBtn.style.backgroundColor = "white";
}

function toggleStopwatch() {
  stopWatchDOM.style.display = "block";
  clockDOM.style.display = "none";
  clockBtn.style.backgroundColor = "white";
  stopWatchBtn.style.backgroundColor = "aquamarine";
}
