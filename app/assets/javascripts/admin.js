$(document).ready(function(){
  
  $('.org-create .button').on('click', function(e) {
    $('.org-create .new_organization').slideToggle();
    $('.org-create .button').hide();
    e.preventDefault();
  })

})