// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.ui.all
//= require jquery_ujs
//= require jquery.remotipart
//= require foundation
//= require Chart

$(document).foundation();

$('#query').autocomplete({
  source: "/search_suggestions"
});
$('a[data-remote],input[data-remote]').on('click', function(e) {
  // $(this).callRemote();
  e.preventDefault();
});

$(".modalView").click(function(){
  $(".myModal").foundation('reveal', 'open');
});

$(".close-reveal-modal").click(function(){
  $(this).closest(".myModal").foundation('reveal', 'close');
});


$('.checkable').on('change', 
function() {
    $(this).parents('form:first').submit();
});

$(".card .upper-panel").click(function(){
	$(this).find(".needsModal").foundation('reveal', 'open');
});

$(".close-reveal-modal").click(function(){
	$(this).closest(".needsModal").foundation('reveal', 'close');
});

