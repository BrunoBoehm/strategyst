$(window).load(function(){
  $('.panel-heading.animate').nextAll().hide();
  // nextAll() : searches through the successors of these elements, doesn't include the targeted one
  // doesn't concern the AJAX ones since thy are empty until click.

  mountToggleCardHandler();

  addHandlerAddItem();

  $('.add-item').on('click', function(e){
    e.preventDefault();
    $('.myModal').modal('show');
  })
});

function mountToggleCardHandler(){
  // $().click() only works for elements already on the page. You have to use something like on if you are wiring up future elements
  //  event delegation: delegate event to static parent of the dynamically added elements
  $('.container').on('click', '.panel-heading.animate', function(e){
    var heading = $(this);
    heading.closest('div[class*="col-md"]').toggleClass('col-md-4 col-md-12');
    heading.nextAll().toggle( 'slow' );
    console.log("Fired mountToggleCardHandler() from:");
    console.log(heading);
    e.stopPropagation();
  })
}


function addHandlerAddItem(){
  $('.add-item').hide();

  $('section')
    .mouseenter(function(){
      $(this).find('.add-item').fadeIn(200, "swing");
    })
    .mouseleave(function(){
      $(this).find('.add-item').fadeOut(200, "swing");
    });
}
