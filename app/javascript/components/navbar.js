const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-svg');
  const ia2000 = document.querySelector('.ia2000-card');
  const ia2000Right = document.querySelector('.ia2000-right');

  if (navbar) {
    window.addEventListener('scroll', () => {
        // console.log(ia2000.style.display);
      if (window.scrollY >= window.innerHeight / 15) {
        // console.log(navbar);
        navbar.classList.add('navbar-transparent');
        // ia2000.style.display = 'none';
        // ia2000Right.style.display = 'initial';


      } else {
        navbar.classList.remove('navbar-transparent');

        // ia2000.style.display = 'initial';
        // ia2000Right.style.display = 'none';
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
