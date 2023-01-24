assignment = [
  {
    number: 1,
    title: "Selectors",
    codeLink:
      "https://github.com/punyapd/Internship/tree/master/css/assignment-no-1",
    demoLink: "../css/assignment-no-1/index.html",
  },
  {
    number: 2,

    title: "padding inline and block",
    codeLink:
      "https://github.com/punyapd/Internship/tree/master/css/assignment-no-2",
    demoLink: "../css/assignment-no-2/index.html",
  },
  {
    number:3,  
    title: "Box model",
    codeLink:
      "https://github.com/punyapd/Internship/tree/master/css/assignment-no-3",
    demoLink: "../css/assignment-no-3/index.html",

  },
  {
    number: 4,
    title: "Block and inline elements",
    codeLink:
      "https://github.com/punyapd/Internship/tree/master/css/assignment-no-4",
    demoLink: "../css/assignment-no-4/index.html",
  },
  {
    number: 5,

    title: "Remove Padding",
    codeLink:
      "https://github.com/punyapd/Internship/tree/master/css/assignment-no-5",
    demoLink: "../css/assignment-no-5/index.html",
  },
  {
    number:6,  
    title: "flex",
    codeLink:
      "https://github.com/punyapd/Internship/tree/master/css/assignment-no-6",
    demoLink: "../css/assignment-no-6/index.html",

  },
  {
    number: 7,
    title: "Grid",
    codeLink:
      "https://github.com/punyapd/Internship/tree/master/css/assignment-no-7",
    demoLink: "../css/assignment-no-7/index.html",
  },
  {
    number: 8,

    title: "Float Problem",
    codeLink:
      "https://github.com/punyapd/Internship/tree/master/css/assignment-no-8",
    demoLink: "../css/assignment-no-8/index.html",
  },
  {
    number:9,  
    title: "List with Check",
    codeLink:
      "https://github.com/punyapd/Internship/tree/master/css/assignment-no-9",
    demoLink: "../css/assignment-no-9/index.html",

  },
  {
    number: 10,
    title: "min() max() and clamp()",
    codeLink:
      "https://github.com/punyapd/Internship/tree/master/css/assignment-no-10",
    demoLink: "../css/assignment-no-10/index.html",
  },
  {
    number: 11,

    title: "Animation",
    codeLink:
      "https://github.com/punyapd/Internship/tree/master/css/assignment-no-11",
    demoLink: "../css/assignment-no-11/index.html",
  },
  {
    number:12,  
    title: "Tooltip",
    codeLink:
      "https://github.com/punyapd/Internship/tree/master/css/assignment-no-12",
    demoLink: "../css/assignment-no-12/index.html",

  },
  {
    number: 13,
    title: "card with flex",
    codeLink:
      "https://github.com/punyapd/Internship/tree/master/css/assignment-no-13",
    demoLink: "../css/assignment-no-13/page1/index.html",
  },
  {
    number: 14,

    title: "Plan Card",
    codeLink:
      "https://github.com/punyapd/Internship/tree/master/css/assignment-no-14",
    demoLink: "../css/assignment-no-14/index.html",
  },
  {
    number:15,  
    title: "Bio Card",
    codeLink:
      "https://github.com/punyapd/Internship/tree/master/css/assignment-no-15",
    demoLink: "../css/assignment-no-15/index.html",

  },
  {
    number:16,  
    title: "FINAL PROJECT",
    codeLink:
      "https://github.com/punyapd/Internship/tree/master/css/assignment-no-16",
    demoLink: "../css/assignment-no-16/index.html",

  },
];
let main = document.getElementById("main");

let container = document.createElement("div");

container.setAttribute("class", "container");
main.appendChild(container);

let h1 = document.createElement("h1");
let h1TextNode = document.createTextNode("CSS Assignments");
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

  let numberHeader = document.createElement('h2');
  let numberContent = document.createTextNode(item?.number)
  numberHeader.appendChild(numberContent)

  let titleHeader = document.createElement("h3");
  let titleContent = document.createTextNode(item?.title);
  titleHeader.appendChild(titleContent);

  assmntCardsTitle.appendChild(numberHeader);

  assmntCardsTitle.appendChild(titleHeader);
  card.appendChild(assmntCardsTitle);
  assmntCards.appendChild(card);

  codeLinkTag.appendChild(codeLinkText);
  card.appendChild(codeLinkTag);
  demoLinkTag.appendChild(demoLinkText);
  card.appendChild(demoLinkTag);
});

container.appendChild(assmntCards); //append card list in container
