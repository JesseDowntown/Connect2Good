$(document).ready(function(){
  
  $('.org-edit .button').on('click', function(e) {
    $('.org-edit .edit_organization').slideToggle();
    $('.org-edit .button').hide();
    e.preventDefault();
  })

  
  //Get context with jQuery - using jQuery's .get() method.
  var ctx = $("#myChart").get(0).getContext("2d");
  //This will get the first returned node in the jQuery collection.
  var myNewChart = new Chart(ctx).Doughnut(data);

})