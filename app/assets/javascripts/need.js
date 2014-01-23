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
