const initScrollAuto = () => {

// document.addEventListener("DOMContentLoaded", () => {

    const offset = document.getElementById("scroll-to");


    if (offset) {
      // console.log("offset=" + offset);
      window.scrollTo({
        top: offset.offsetTop + 220,
        behavior: 'smooth'
      });
    }

}


export { initScrollAuto };
