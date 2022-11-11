var img = document.getElementsByClassName("banner__logo");
let scrollY = window.scrollY;

window.addEventListener("scroll", () => {
    if(scrollY > (img[0].y/4)) {
        img[0].classList.add("banner__logo--transition")
    } else {
        img[0].classList.remove("banner__logo--transition")
    }
});
