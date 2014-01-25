//= require jquery
//= require jquery.ui.all
//= require jquery_ujs
//= require foundation
//= require Chart

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
