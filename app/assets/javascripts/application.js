// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require bootstrap.min
$(document).ready(function() {
  $('.scroll-top-wrapper').on('click', scrollToTop);

});
function scrollToTop() {
  verticalOffset = typeof(verticalOffset) != 'undefined' ? verticalOffset : 0;
  element = $('body');
  offset = element.offset();
  offsetTop = offset.top;
  $('html, body').animate({scrollTop: offsetTop}, 600, 'linear');
}
$(document).on( 'scroll', function(){
  if ($(window).scrollTop() > 50) {
    $('.scroll-top-wrapper').addClass('show');
  } else {
    $('.scroll-top-wrapper').removeClass('show');
  }
});

$(document).ready(function() {
  $('.login').hover(function() {
    $('.login-icon').addClass('yellow');
  }, function() {
    $('.login-icon').removeClass('yellow')
  });
});