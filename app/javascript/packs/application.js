/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

import Vue from 'vue';
import Navbar from '../components/shared/navbar.vue';
import About from '../components/about/about.vue';
import Contact from '../components/contact/contact.vue';
import Help from '../components/help/help.vue';

const container = new Vue({
    el: '.js-vue',
    components: {
        'Navbar': Navbar,
        'About': About,
        'Contact': Contact,
        'Help': Help
    }
});
