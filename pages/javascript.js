assignment = [
    {
      number: 1,
      title: "Assignment redo(DOM)",
      codeLink:
        "https://github.com/punyapd/Internship",
      demoLink: "https://punyapd.github.io/Internship",
    },
    {
      number: 2,
  
      title: "Password Generator",
      codeLink:
        "https://github.com/punyapd/Internship/tree/master/js/assignment-no-2/pg",
      demoLink: "https://punyapd.github.io/Internship/js/assignment-no-2/pg/index.html",
    },
    {
      number: 2,
  
      title: "clock and stopwatch",
      codeLink:
        "https://github.com/punyapd/Internship/tree/master/js/assignment-no-2/clock",
      demoLink: "https://punyapd.github.io/Internship/js/assignment-no-2/clock/index.html",
    },
    {
      number: 3,
  
      title: "Image carousel",
      codeLink:
        "https://github.com/punyapd/Internship/tree/master/js/assignment-no-3",
      demoLink: "https://punyapd.github.io/Internship/js/assignment-no-3/index.html",
    },
   
  ];
  let main = document.getElementById("main");
  
  let container = document.createElement("div");
  
  container.setAttribute("class", "container");
  main.appendChild(container);
  
  let h1 = document.createElement("h1");
  let h1TextNode = document.createTextNode("JS Assignments");
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
  