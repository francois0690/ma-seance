// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")


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

// import { initSelect2 } from '../components/init_select2';
import { bubller } from '../components/_buton';
import { initMapbox } from '../plugins/init_mapbox';
// import { init_Vivus } from '../plugins/init_vivus';
import { initShowMoreDoctors, initShowMoreSpecialities } from '../plugins/init_show-more';
import * as typeformEmbed from '@typeform/embed'
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { loading } from '../plugins/init_loadingbar';
import { initChatroomCable } from '../channels/chatroom_channel.js';

import { initScrollAuto } from '../components/scroll_auto';

const AOS = require('aos');

document.addEventListener('turbolinks:load', () => {
    // bubller();
    initShowMoreDoctors();
    initChatroomCable();

    // init_Vivus();
    initUpdateNavbarOnScroll();
    initScrollAuto();
    loading();
    initMapbox();
    // initReadMoreT();
    // init_Vivus();
    btnCleaner();
    typeformLoader();

});


document.addEventListener('DOMContentLoaded', function() {
    AOS.init({
        duration: 1200,
        startEvent: 'turbolinks:load' // if you are using turbolinks
    });

    initShowMoreSpecialities();
    // initReadMore();

});

const loader = document.querySelector(".loader");
// TYPEFORM

const typeformLoader = () => {
  const typeform = document.getElementById("typeform");
  if (typeform) {
    typeformEmbed.makeWidget(typeform, "https://delux.typeform.com/to/Eeg5LyRw?&origin=*", {
      hideFooter: false,
      hideHeaders: false,
      opacity: 0,
      onSubmit: (data) => {
        loader.classList.toggle("hidden");
        typeform.classList.toggle("hidden");
        setTimeout(() => {
          window.location.replace(`${typeform.dataset.redirectUrl}/results?response_id=${data.response_id}`);
        }, 1000);
      }
    });
  }
}

const btnCleaner = () => {
  const submitMessage = document.querySelector('.valid_message')
  // const messageInput = document.getElementById('message_content')

  if (submitMessage) {
    submitMessage.addEventListener('click', function() {
      console.log(submitMessage);
      submitMessage.value = "Message bien envoyé !"
    });
  }
}
