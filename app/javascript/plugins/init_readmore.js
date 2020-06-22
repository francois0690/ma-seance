import { readmore } from 'readmore-js/readmore.min.js'
const box_sizes = [80, 160, 250, 300, 80, 160, 250, 300, 80, 160, 250, 300];
const initReadMore = () => {
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
export { initReadMore };