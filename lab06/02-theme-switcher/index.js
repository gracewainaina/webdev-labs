/*
    Hints: 
    1. Attach click event handlers to all four of the 
       buttons (#default, #ocean, #desert, and #high-contrast).
    2. Modify the className property of the body tag 
       based on the button that was clicked.
*/

const switchTheme = ev => {
   if (ev.currentTarget.id === "desert") {
      document.querySelector("body").className = "desert";
   } else if (ev.currentTarget.id === "ocean") {
      document.querySelector("body").className = "ocean";
   } else if (ev.currentTarget.id === "high-contrast"){
      document.querySelector("body").className = "high-contrast";
   } else {
      document.querySelector("body").className = "default";
   }
};

document.querySelector("#default").onclick = switchTheme;
document.querySelector("#desert").onclick = switchTheme;
document.querySelector("#ocean").onclick = switchTheme;
document.querySelector("#high-contrast").onclick = switchTheme;

