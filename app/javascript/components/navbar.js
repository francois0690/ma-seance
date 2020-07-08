const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-svg');
  const navbarTitle = document.querySelector('.div-navbar-title');
  // const ia2000 = document.querySelector('.ia2000-card');

  if (navbar) {
    window.addEventListener('scroll', () => {
        // console.log(ia2000.style.display);
      if (window.scrollY >= window.innerHeight / 20) {
        // console.log(navbar);
        navbar.classList.add('navbar-transparent');
        navbarTitle.classList.add('navbar-transparent');

        // ia2000.style.display = 'none';
        // ia2000Right.style.display = 'initial';


      } else {
        navbar.classList.remove('navbar-transparent');
        navbarTitle.classList.remove('navbar-transparent');

        // ia2000.style.display = 'initial';
        // ia2000Right.style.display = 'none';
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
