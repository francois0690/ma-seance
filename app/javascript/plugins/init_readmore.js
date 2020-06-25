import { readmore } from 'readmore-js/readmore.min.js'
const box_sizes = [80, 160, 250, 300, 80, 160, 250, 300, 80, 160, 250, 300];
const initReadMore = () => {


    // page des specialities
    let speciliies = document.querySelectorAll(".speciality > p");
    $(".speciality > p").each(function(e) {
        $(this).readmore({
            speed: 150,
            collapsedHeight: box_sizes[Math.floor(Math.random() * 12)],
            moreLink: '<a href="#">lire la suite</a>',
            lessLink: '<a href="#">réduire</a>'
        });
    });
};

const initReadMoreT = () => {

    // page des toubibs
    // const doctorsDesc = document.querySelectorAll(".info .description");
    // console.log(doctorsDesc);

    // console.log (doctorsDesc(0).innerHTML);



    // $(".info #description").readmore({
    //         speed: 75,
    //         moreLink: '<a href="#">Lire la suite...</a>',
    //         lessLink: '<a href="#">Réduire</a>'


    //         // afterToggle: function(trigger, element, expanded) {
    //         //   if(! expanded) { console.log("toto") }


    // });


    // jQuery(document).ready(function ($) {
    //   $('.info #description').readmore({

$(".info #description").readmore({
            speed: 550,
            moreLink: '<a class="moreLink" href="#">Lire la suite...</a>',
            lessLink: '<a class="lessLink" href="#">Réduire</a>',
            // afterToggle: function() { console.log("afterToogle") } ,
            beforeToggle: function() { console.log("beforeToogle") },

// if(! expanded) { console.log("toto") }}

          });




    // const links = document.querySelectorAll(".info > a");
    // links.forEach((link) => {

    //   console.log(link.innerHTML);
    //   if (link.innerHTML == "Lire la suite...") {
    //     console.log(link.innerHTML);
    //   }

    // });


// document.querySelectorAll("img").forEach((img) => {
//   img.addEventListener("click", (event) => {
//     event.currentTarget.classList.toggle("img-circle");
//   });
// });


};

export { initReadMore, initReadMoreT };
