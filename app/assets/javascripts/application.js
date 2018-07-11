// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery
//= require_tree .

/****************************************
***************Spotify SDK***************
****************************************/

window.onSpotifyWebPlaybackSDKReady = () => {
  const token = 'BQB3nnWov5gWPErTdfMP7ibqBI2X-7GAe04PMW6A6kixdwCUqrkw0mizcmFN4ybeoiL2GFGCjhBpJVOSwB-cA6OmVKVdgfyqRTHbOn8f7jCqykF4J-CCGcA89fd4-BWVQBHkJYs512HEPaBVF8EA4FdwJX3xjQvZQ88tsKugeaReAUnh5Woc4g';
  const player = new Spotify.Player({
    name: 'Web Playback SDK Quick Start Player',
    getOAuthToken: cb => { cb(token); }
  });

  // Error handling
  player.addListener('initialization_error', ({ message }) => { console.error(message); });
  player.addListener('authentication_error', ({ message }) => { console.error(message); });
  player.addListener('account_error', ({ message }) => { console.error(message); });
  player.addListener('playback_error', ({ message }) => { console.error(message); });

  // Playback status updates
  player.addListener('player_state_changed', state => { console.log(state); });

  // Ready
  player.addListener('ready', ({ device_id }) => {
    console.log('Ready with Device ID', device_id);
  });

  // Not Ready
  player.addListener('not_ready', ({ device_id }) => {
    console.log('Device ID has gone offline', device_id);
  });

  // Connect to the player!
  player.connect();
};


/****************************************
***************Navigation****************
****************************************/

/* Open when someone clicks on the span element */
function openNav() {
  document.getElementById("overlay-nav").style.height = "100%";
}

/* Close when someone clicks on the "x" symbol inside the overlay */
function closeNav() {
  document.getElementById("overlay-nav").style.height = "0%";
}

/****************************************
**************Complete Load**************
****************************************/
$(document).on('turbolinks:load', function() {

});