assignments = [
    {
        topic:"FIGMA",
        link:"./pages/figma.html"
    },
   
    {
        topic:"BOOTSTRAP",
        link:"./pages/bootstrap.html"
    },
    {
        topic:"SCSS",
        link:"./pages/scss.html"
    },
    {
        topic:"HTML",
        link:"./pages/html.html"
    },
    {
        topic:"CSS",
        link:"./pages/css.html"
    },  
    {
        topic:"FRONTEND FINAL PROJECT",
        link:"./pages/finalfrontend.html"
    },
    {
        topic:"JAVASCRIPT",
        link:"./pages/javascript.html"
    },
]

//index page.

let main = document.getElementById('main');
let body = document.getElementsByTagName('body')
let container = document.createElement('div');
let seeProfile = document.createElement('a');
seeProfile.setAttribute('href' , 'pages/profile.html')

seeProfile.setAttribute('class' , 'see-profile')
seeProfile.setAttribute('title' , 'see-profile')

container.setAttribute('class' , 'container');

main.appendChild(container);
body[0].appendChild(seeProfile)


let h1 = document.createElement('h1');
let h1TextNode = document.createTextNode("Internship Assignments");
h1.appendChild(h1TextNode);
container.appendChild(h1)


let assmntCards = document.createElement('div');
assmntCards.setAttribute('class' , 'assignment__cards');

//for loop starts here
assignments.map((item)=> {
    let card = document.createElement('div');
    card.setAttribute('class' , 'card');
    
    let assmntCardsTitle = document.createElement('div');
    assmntCardsTitle.setAttribute('class' , 'assignment__cards__title');
    
    
    let linkTag = document.createElement('a');
    linkTag.setAttribute('href' , item?.link);
    linkTag.setAttribute('class' , 'link')
    let linkText = document.createTextNode("SEE DETAILS")
    
    
    
    let titleHeader = document.createElement('h3');
    let titleContent = document.createTextNode(item?.topic);
    titleHeader.appendChild(titleContent);
    
    assmntCardsTitle.appendChild(titleHeader)
    card.appendChild(assmntCardsTitle)
    assmntCards.appendChild(card)
    
    linkTag.appendChild(linkText);
    card.appendChild(linkTag);
})




container.appendChild(assmntCards) //append card list in container 


