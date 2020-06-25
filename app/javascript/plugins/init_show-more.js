import { showmore } from 'show-more/jquery.show-more.js'

const initShowMoreDoctors = () => {

$('.info #description').showMore({
    minheight: 210,
    buttontxtmore: 'Lire la suite...',
    buttontxtless: 'Réduire',
    buttoncss: 'my-show-more-button',
    animationspeed: 200
});

};


const initShowMoreSpecialities = () => {

const box_sizes = [100, 250, 500, 650];

$('.speciality > p').showMore({
    minheight: box_sizes[Math.floor(Math.random() * 35)],
    buttontxtmore: 'Lire la suite...',
    buttontxtless: 'Réduire',
    buttoncss: 'my-show-more-button',
    animationspeed: 200
});

};


// minheight: box_sizes[Math.floor(Math.random() * 32)],


export { initShowMoreDoctors, initShowMoreSpecialities };
