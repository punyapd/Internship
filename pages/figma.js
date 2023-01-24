assignment = [
    {
      title: "TESTIMONIALS",
      codeLink: "https://www.figma.com/file/8FzCmUF9duNc7cmbu6chnI/task?node-id=6%3A249&t=CrETk1Dznnt86Flv-0",
      demoLink: "https://www.figma.com/proto/8FzCmUF9duNc7cmbu6chnI/task?node-id=6%3A249&scaling=min-zoom&page-id=3%3A36&starting-point-node-id=6%3A249",
    },
    {
        title: "FEATURES",
        codeLink: "https://www.figma.com/file/8FzCmUF9duNc7cmbu6chnI/task?node-id=3%3A37&t=XhlqH1nU8sGRugVd-0",
        demoLink: "https://www.figma.com/proto/8FzCmUF9duNc7cmbu6chnI/task?node-id=3%3A37&scaling=min-zoom&page-id=3%3A36&starting-point-node-id=6%3A249",
      },
      {
        title: "TOP DESTINATION",
        codeLink: "https://www.figma.com/file/8FzCmUF9duNc7cmbu6chnI/task?node-id=4%3A100&t=XhlqH1nU8sGRugVd-0",
        demoLink: "https://www.figma.com/proto/8FzCmUF9duNc7cmbu6chnI/task?node-id=4%3A100&scaling=min-zoom&page-id=3%3A36&starting-point-node-id=6%3A249",
      },
  ];
  let main = document.getElementById('main')
  
  let container = document.createElement("div");
  
  container.setAttribute("class", "container");
  main.appendChild(container)
  
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
  