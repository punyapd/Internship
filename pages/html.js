assignment = [
    {
      title: "FORMATTING TAGS",
      codeLink: "https://github.com/punyapd/Internship/tree/master/html/assignment-no-1/firstpage",
      demoLink: "../html/assignment-no-1/firstpage/index.html",
    },
    {
        title: "FORM",
        codeLink: "https://github.com/punyapd/Internship/tree/master/html/assignment-no-1/htmlforms",
        demoLink: "../html/assignment-no-1/htmlforms/index.html",
      },
      {
        title: "TABLE",
        codeLink: "https://github.com/punyapd/Internship/tree/master/html/assignment-no-1/table",
        demoLink: "../html/assignment-no-1/table/index.html",
      },
  ];
  let main = document.getElementById('main')
  
  let container = document.createElement("div");
  
  container.setAttribute("class", "container");
  main.appendChild(container)
  
  let h1 = document.createElement("h1");
  let h1TextNode = document.createTextNode("HTML Assignments");
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
  