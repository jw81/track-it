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
//= require_tree .
//= require jquery3
//= require popper
//= require bootstrap-sprockets

$(document).on("turbolinks:load", function() {
  // keeps "dark mode" toggle from flashing on page load.
  //  prob should find an alternative solution sometime
  Turbolinks.clearCache();

  function switchTheme(e) {
    if (e.target.checked) {
      document.documentElement.setAttribute('data-theme', 'dark');
      localStorage.setItem('theme', 'dark');
      $('#sun').show();
      $('#moon').hide();
    }
    else {
      document.documentElement.setAttribute('data-theme', 'light');
      localStorage.setItem('theme', 'light');
      $('#moon').show();
      $('#sun').hide();
    }
  }

  const toggleSwitch = $('#dark_switch');
  const currentTheme = localStorage.getItem('theme') ? localStorage.getItem('theme') : null;

  if (currentTheme) {
      document.documentElement.setAttribute('data-theme', currentTheme);

      if (currentTheme === 'dark') {
          toggleSwitch.prop('checked', true);
          $('#sun').show();
          $('#moon').hide();
      } else {
        $('#moon').show();
        $('#sun').hide();
      }
   }

  toggleSwitch.change(switchTheme);
});
