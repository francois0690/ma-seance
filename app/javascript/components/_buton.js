const buton = document.querySelectorAll(".button");

const bubller = buton.forEach((btn) => {
  btn.addEventListener('click', (event) => {
    let x = event.clientX - event.target.offsetLeft;
    let y = event.clientY - event.target.offsetTop;

    let bubble = document.createElement("span");
    bubble.style.left = x + 'px';
    bubble.style.top = y + 'px';
    btn.appendChild(bubble);

    setTimeout(function() {
      bubble.remove();
    }, 1000);
  });
});

export {bubller};
