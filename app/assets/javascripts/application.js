// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require_tree .

$(function () {
  
  $('.go-back').click(function() {
    
    history.back();
    
  });
  
  $('ul').find('li').click(function(e) {
    var href = $(this).find('a').attr('href');
    if(typeof href !== 'undefined') {
      window.location = href;
    } else {
      // $(this).find('input[type=submit]').submit();
    }
  });
  
  $.each($('ul').find('li'), function() {
    if($(this).find('a').length > 0) {
      $(this).addClass('clickable');
    }
  })
  
});