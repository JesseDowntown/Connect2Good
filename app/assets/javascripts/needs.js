//= require jquery
//= require jquery.ui.all
//= require jquery_ujs
//= require foundation
//= require Chart

$('.checkable').on('change', 
function() {
    $(this).parents('form:first').submit();
});