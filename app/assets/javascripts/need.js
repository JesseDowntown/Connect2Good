$('.delete_need').bind('ajax:success', function() {  
    $(this).closest('tbody').fadeOut();  
});