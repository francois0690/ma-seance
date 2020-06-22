import { readmore } from 'readmore-js/readmore.min.js'
const box_sizes = [80, 160, 250, 300, 80, 160, 250, 300, 80, 160, 250, 300];
const initReadMore = () => {


    // page des specialities
    let speciliies = document.querySelectorAll(".speciality > p");
    $(".speciality > p").each(function(e) {
        $(this).readmore({
            speed: 75,
            collapsedHeight: box_sizes[Math.floor(Math.random() * 12)],
            moreLink: '<a href="#">lire la suite</a>',
            lessLink: '<a href="#">réduire</a>'
        });
    });
};

const initReadMoreT = () => {

    // page des toubibs
    const doctorsDesc = document.querySelectorAll(".info #description");



    // console.log (doctorsDesc(0).innerHTML);
    $(".info #description").each(function(e) {
        $(this).readmore({
          speed: 75,
            moreLink: '<a href="#">Lire la suite...</a>',
            lessLink: '<a href="#">Réduire</a>'
        });
    });
};

export { initReadMore, initReadMoreT };
