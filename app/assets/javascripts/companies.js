$(document).ready(function(){
  $('.panel-heading.animate').nextAll().hide();

  $('.panel-heading.animate').click(function(e){
    $(this).closest('div[class*="col-md"]').toggleClass('col-md-4 col-md-12');
    $(this).nextAll().toggle( 'slow' );
    e.stopPropagation();
  })

  addHandlerAddItem();

  $('.add-item').on('click', function(e){
    e.preventDefault();
    $('.myModal').modal('show');
  })
});


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
