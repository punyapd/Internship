inputOptions = [
  {
    label: "length",
    attr: [
      {
        type: "number",
        id: "length",
        min: 4,
        max: 20,
        value: 10,
      },
    ],
  },
  {
    label: "Include Uppercase",
    attr: [
      {
        type: "checkbox",
        id: "uppercase",
        checked:true,
      },
    ],
  },
  {
    label: "Inlcude Numbers",
    attr: [
      {
        type: "checkbox",
        id: "numbers",
        checked:true,
      },
    ],
  },
  {
    label: "Include Symbols",
    attr: [
      {
        type: "checkbox",
        id: "symbols",
        checked:true,
      },
    ],
  },
];

let main = document.getElementById("main");

//create form element
let formDOM = document.createElement("form");
formDOM.setAttribute("id", "passwordGenerationForm");

//create containner element
let container = document.createElement("div");
container.setAttribute("class", "container");

//creating element for title
let titleDOM = document.createElement("h2");
let titleText = document.createTextNode("Password Generator");

//append title text to h2
titleDOM.appendChild(titleText);

//append title to container
container.appendChild(titleDOM);

//create element for displaying password
const passwordContainer = document.createElement("div");
passwordContainer.setAttribute("class", "password-container");

//creating span for password container  and button for copy
const spanDOM = document.createElement("span");
spanDOM.setAttribute("id", "result");
let copybtnDOM = document.createElement("button");
copybtnDOM.setAttribute("id", "copy");
const btnText = document.createTextNode("Copy");
copybtnDOM.appendChild(btnText);
// const spanText = document.createTextNode('')

//append spandom and buton to password container
passwordContainer.appendChild(spanDOM);
passwordContainer.appendChild(copybtnDOM);
//append passwordcontainer to container
container.appendChild(passwordContainer);

//create options container
let optionsDOM = document.createElement("div");
optionsDOM.setAttribute("class", "options");

//create chids for options
inputOptions.map((option) => {
  let optionDOM = document.createElement("div");
  optionDOM.setAttribute("class", "option");

  let labelDOM = document.createElement("label");
  labelDOM.appendChild(document.createTextNode(option.label));
  //append label to option
  optionDOM.appendChild(labelDOM);
  let inputDOM = document.createElement("input");
  option.attr.map((item) => {
    inputDOM.setAttribute("type", item.type);
    inputDOM.setAttribute("id", item.id);
    if(item.checked) inputDOM.checked = item.checked;
    if (item.min) inputDOM.setAttribute("min", item.min);
    if (item.max) inputDOM.setAttribute("max", item.max);
    if (item.value) inputDOM.setAttribute("value", item.value);

    // if (item.checked) inputDOM.setAttribute('',"checked");
  });
  optionDOM.appendChild(inputDOM);
  //append options to container
  optionsDOM.appendChild(optionDOM);
});
container.appendChild(optionsDOM);

//crate button element
let buttonDOM = document.createElement("button");
buttonDOM.setAttribute("class", "btn");
buttonDOM.setAttribute("id", "generate");
buttonDOM.setAttribute("type", "submit");
const buttonText = document.createTextNode("Generate Password");
buttonDOM.appendChild(buttonText);

//append button to continer
container.appendChild(buttonDOM);
//append container to main
formDOM.appendChild(container);
main.appendChild(formDOM);


//end of design from dom manipulation


const lengthDOM = document.getElementById('length');
const uppercaseDOM = document.getElementById('uppercase');
const numbersDOM = document.getElementById('numbers');
const symbolsDOM = document.getElementById('symbols');
const generatebtn = document.getElementById('generate');
const form = document.getElementById('passwordGenerationForm');


//code for generating character codes and converting them to array
const UPPERCASE_CODES = arrayFromLowToHigh(65, 90);
console.log('upper: ' , UPPERCASE_CODES)
const LOWERCASE_CODES = arrayFromLowToHigh(97, 122);
const NUMBER_CODES = arrayFromLowToHigh(48, 57);
const SYMBOL_CODES = arrayFromLowToHigh(33, 47)
  .concat(arrayFromLowToHigh(58, 64))
  .concat(arrayFromLowToHigh(91, 96))
  .concat(arrayFromLowToHigh(123, 126));


//function for converting character to arrays 
function arrayFromLowToHigh(low, high) {
    const array = [];
    for (let i = low; i <= high; i++) {
      array.push(i);
    }
    return array;
  }

//code for checking the options selected by users 


form.addEventListener('submit', (e) => {
    e.preventDefault();
    const characterAmount = lengthDOM.value;
    console.log("charamt: " , characterAmount);
  
    const includeUppercase = uppercaseDOM.checked;
    console.log("uppercase: " , includeUppercase)
    const includeNumbers = numbersDOM.checked;
    console.log('numbers: ' ,includeNumbers)
    const includeSymbols = symbolsDOM.checked;
    console.log("includeysm: " ,includeSymbols )
    const password = generatePassword(
      characterAmount,
      includeUppercase,
      includeNumbers,
      includeSymbols
    );
    spanDOM.innerText = password;
  });


  //function for generating the password
  let generatePassword = (
    characterAmount,
    includeUppercase,
    includeNumbers,
    includeSymbols
  ) => {
    let charCodes = LOWERCASE_CODES;
    if (includeUppercase) charCodes = charCodes.concat(UPPERCASE_CODES);
    if (includeSymbols) charCodes = charCodes.concat(SYMBOL_CODES);
    if (includeNumbers) charCodes = charCodes.concat(NUMBER_CODES);
    const passwordCharacters = [];
    for (let i = 0; i < characterAmount; i++) {
      const characterCode =
        charCodes[Math.floor(Math.random() * charCodes.length)];
        console.log('codes: ' , characterCode)
      passwordCharacters.push(String.fromCharCode(characterCode));
      console.log('main: ' , passwordCharacters)
    }
    return passwordCharacters.join('');
  };


  //code for copying the generted password
  copybtnDOM.addEventListener('click', () => {
    const copyPassword = spanDOM.innerText;
  
    // return  when Password is Empty
    if (!copyPassword) return;
  
    // Copy Functionality
    navigator.clipboard.writeText(copyPassword)
    alert('Password Copied to Clipboard');
  });

