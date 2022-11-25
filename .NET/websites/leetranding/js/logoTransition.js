var img = document.getElementsByClassName("banner__logo");
var logo = document.getElementById("logo-nav");
let scrollY = window.scrollY;
let pass = false;

window.addEventListener("scroll", () => {
    if(scrollY > (img[0].y - 60) && pass == false) {
        pass = true;
        img[0].classList.remove("banner__logo--transitionGrow");
        logo.classList.remove("header__logo--transitionDesappears");
        img[0].classList.add("banner__logo--transitionShrink");
        logo.classList.add("header__logo--transitionAppears");
    } else if (scrollY < (img[0].y - 60) && pass == true) {
        pass = false;
        img[0].classList.remove("banner__logo--transitionShrink");
        logo.classList.remove("header__logo--transitionAppears");
        img[0].classList.add("banner__logo--transitionGrow");
        logo.classList.add("header__logo--transitionDesappears");
    }
});
