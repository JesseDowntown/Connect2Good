$(document).ready(function(){
  $('.org-edit .edit_organization').hide()

  $('.org-edit .button').on('click', function(e) {
    $('.org-edit .edit_organization').slideToggle();
    $('.org-edit .button').hide();
    e.preventDefault();
  })

})