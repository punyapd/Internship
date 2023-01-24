icons = [
  {
    type: "fa-brands fa-linkedin",
    link: "https://www.linkedin.com/in/punya-dahal-a91715227/",
  },
  {
    type: "fa-brands fa-facebook",
    link: "https://www.facebook.com/punya.dahal.370",
  },
  {
    type: "fa-brands fa-twitter",
    link: "https://twitter.com/",
  },
  {
    type: "fa-brands fa-github",
    link: "https://github.com/punyapd",
  },

  "fa-brands fa-facebook",
  "fa-brands fa-twitter",
  "fa-brands fa-github",
];

let main = document.getElementById("main");
let container = document.createElement("div");

container.setAttribute("class", "container");

let profileWrapper = document.createElement("div");
profileWrapper.setAttribute("class", "profile-pic__wrapper");

let personalInfo = document.createElement("div");
personalInfo.setAttribute("class", "personal-info");

let myName = document.createElement("h3");
let h1 = document.createTextNode("Punya prasad Dahal");

let gmailInfo = document.createElement("div");
let gmailContent = document.createTextNode("dahalpp55@gmail.com");
gmailInfo.appendChild(gmailContent);
myName.appendChild(h1);
personalInfo.appendChild(myName);

//social media icons
let socialMedia = document.createElement("div");
socialMedia.setAttribute("class", "social-media");

icons.map((icon) => {
  let anchorTag = document.createElement("a");
  anchorTag.setAttribute("href", icon.link);
  let iconTag = document.createElement("i");
  iconTag.setAttribute("class", icon.type);
  anchorTag.appendChild(iconTag);
  socialMedia.appendChild(anchorTag);
});

container.appendChild(profileWrapper);
container.appendChild(personalInfo);
container.appendChild(gmailInfo);
container.appendChild(socialMedia);
main.appendChild(container);
