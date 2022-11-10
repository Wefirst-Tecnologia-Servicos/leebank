var img = document.getElementsByClassName("banner__logo");
let scrollY = window.scrollY;

window.addEventListener("scroll", () => {
    if(scrollY > img[0].y) {
        img[0].classList.add("banner__logo--transition")
    } else {
        img[0].classList.remove("banner__logo--transition")
    }
});
