$('.checkable').on('change', 
function() {
    $(this).parents('form:first').submit();
});