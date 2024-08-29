const mobileMenu = document.querySelector('#mobile-menu');
const menuLinks = document.querySelector('.navbar__menu');

mobileMenu.addEventListener('click', function() {
    mobileMenu.classList.toggle('is-active');
    menuLinks.classList.toggle('active');
});