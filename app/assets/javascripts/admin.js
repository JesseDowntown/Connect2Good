$(document).ready(function(){
  
  $('.org-create .button').on('click', function(e) {
    $('.org-create .new_organization').slideToggle();
    $('.org-create .button').hide();
    e.preventDefault();
  })



  //Get context with jQuery - using jQuery's .get() method.
  var ctx = $("#myChart").get(0).getContext("2d");
  //This will get the first returned node in the jQuery collection.
  var myNewChart = new Chart(ctx).Doughnut(data);

})