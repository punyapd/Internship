assignment = [
  {
    title: "Dashboard UI",
    codeLink:
      "https://github.com/punyapd/Internship/tree/master/react/assignment1",
    demoLink:
      "https://63f19413d4197c0d6e96043b--puyapd-react-assignment-1.netlify.app/",
  },
  {
    title: "Notification , modal , delete",
    codeLink:
      "https://github.com/punyapd/Internship/tree/master/react/assignment2",
    demoLink:
      "https://63f1b8416621d32238c03266--punyapd-react-assignment-2.netlify.app/",
  },
  {
    title: "custom hooks",
    codeLink:
      "https://github.com/punyapd/Internship/tree/master/react/assignment3",
    demoLink: "https://punyapd-react-assignment-3.netlify.app/",
  },
  {
    title: "login  , signup",
    codeLink:
      "https://github.com/punyapd/Internship/tree/master/react/assignment4",
    demoLink: "https://punyapd-react-assignment-4.netlify.app/",
  },
  {
    title: "json server",
    codeLink:
      "https://github.com/punyapd/Internship/tree/master/react/assignment5",
    demoLink: "https://punyapd-react-assignment-5.netlify.app/",
  },
  {
    title: "layout routing  , firebase",
    codeLink:
      "https://github.com/punyapd/Internship/tree/master/react/assignment6",
    demoLink: "https://punyapd-react-assignment-6.netlify.app/",
  },
];
let main = document.getElementById("main");

let container = document.createElement("div");

container.setAttribute("class", "container");
main.appendChild(container);

let h1 = document.createElement("h1");
let h1TextNode = document.createTextNode("Figma Assignments");
h1.appendChild(h1TextNode);
container.appendChild(h1);

let assmntCards = document.createElement("div");
assmntCards.setAttribute("class", "assignment__cards");

//for loop starts here
assignment.map((item) => {
  let card = document.createElement("div");
  card.setAttribute("class", "card");

  let assmntCardsTitle = document.createElement("div");
  assmntCardsTitle.setAttribute("class", "assignment__cards__title");

  let codeLinkTag = document.createElement("a");
  codeLinkTag.setAttribute("href", item?.codeLink);
  codeLinkTag.setAttribute("class", "link");
  let codeLinkText = document.createTextNode("CODE");

  let demoLinkTag = document.createElement("a");
  demoLinkTag.setAttribute("href", item?.demoLink);
  demoLinkTag.setAttribute("class", "link");
  let demoLinkText = document.createTextNode("DEMO");

  let titleHeader = document.createElement("h3");
  let titleContent = document.createTextNode(item?.title);
  titleHeader.appendChild(titleContent);

  assmntCardsTitle.appendChild(titleHeader);
  card.appendChild(assmntCardsTitle);
  assmntCards.appendChild(card);

  codeLinkTag.appendChild(codeLinkText);
  card.appendChild(codeLinkTag);
  demoLinkTag.appendChild(demoLinkText);
  card.appendChild(demoLinkTag);
});

container.appendChild(assmntCards); //append card list in container
