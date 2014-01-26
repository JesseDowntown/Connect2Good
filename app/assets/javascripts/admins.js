

$(document).ready(function(){
  
  $('.org-create .button').on('click', function(e) {
    $('.org-create .new_organization').slideToggle();
    $('.org-create .button').hide();
    e.preventDefault();
  }); 


  //Get context with jQuery - using jQuery's .get() method.
  var ctxDoughnut = $("#offerStatusChart").get(0).getContext("2d");
  var ctxLine = $("#offerTimeChart").get(0).getContext("2d");
  
  //This will get the first returned node in the jQuery collection.
  var myNewDoughnutChart = new Chart(ctxDoughnut).Doughnut(doughnutData);
  var myNewLineChart = new Chart(ctxLine).Line(lineData);

});