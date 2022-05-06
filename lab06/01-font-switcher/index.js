const makeBigger = () => {
   if (document.body.style.fontSize == "") {
      document.body.style.fontSize = "1.0em";
   }
   document.body.style.fontSize = parseFloat(document.body.style.fontSize) + 0.1 + "em";
}

const makeSmaller = () => {
   if (document.body.style.fontSize == "") {
      document.body.style.fontSize = "1.0em";
   }
   document.body.style.fontSize = parseFloat(document.body.style.fontSize) - 0.1 + "em";
};

document.querySelector("#a1").addEventListener('click', makeBigger);
document.querySelector("#a2").addEventListener('click', makeSmaller);

