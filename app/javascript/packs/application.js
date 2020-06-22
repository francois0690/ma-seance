// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
// Internal imports, e.g:
import { bubller } from '../components/_buton';
import { initMapbox } from '../plugins/init_mapbox';
import { initReadMore, initReadMoreT } from '../plugins/init_readmore';
const AOS = require('aos');
document.addEventListener('turbolinks:load', () => {
    bubller
    initMapbox();
    initReadMoreT();


});
// speciliies.forEach((e) => { e. });
document.addEventListener('DOMContentLoaded', function() {
    AOS.init({
        duration: 1200,
        startEvent: 'turbolinks:load' // if you are using turbolinks
    });

    initReadMore();

});




