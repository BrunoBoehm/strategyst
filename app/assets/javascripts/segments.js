$(document).ready(function(){

  $('.segments h3').on("click", function(){
    var $segment = $(this);
    var $id = $segment.data('segment-id');
    $.getJSON('/segments/' + $id)
    .success(function(response){
      // console.log(response);
      // debugger;

    })
    .error(function(error){
      alert("There was a problem: " + error.statusText);
    });
  });

})
