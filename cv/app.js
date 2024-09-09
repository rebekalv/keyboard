const mobileMenu = document.querySelector('#mobile-menu');
const menuLinks = document.querySelector('.navbar__menu');

mobileMenu.addEventListener('click', function() {
    mobileMenu.classList.toggle('is-active');
    menuLinks.classList.toggle('active');
});

function copyMail() {  
    // Copy the text inside the text field
    navigator.clipboard.writeText('rebekk0607@hotmail.com');

    let tooltip = document.getElementById("mailTooltip");
    tooltip.innerHTML = "Copied";
}

function mailOutFunc() {
    let tooltip = document.getElementById("mailTooltip");
    tooltip.innerHTML = "";
}