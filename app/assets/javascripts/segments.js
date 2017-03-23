$(document).ready(function(){

  // preparing/compiling our handlebars template (should be done later ?)
  Segment.templateSource = $('#segment-template').html();
  Segment.template = Handlebars.compile(Segment.templateSource);

  $('.segments h3.panel-title').on("click", function(){
    $segment = $(this);
    $id = $segment.data('segment-id');

    // let's explicitly ask for JSON to use handlebars
    $.getJSON('/segments/' + $id)
    .success(function(response){
      console.log(response);
      var segment = new Segment(response);
      var segmentHTML = Segment.template(segment);
      debugger;
      $segment.closest('.panel-default').append(segmentHTML);
    })
    .error(function(error){
      alert("There was a problem: " + error.statusText);
    });
  });

})

function Segment(attributes) {
  this.name = attributes.name;
  this.description = attributes.description;
  this.size = attributes.size;
  this.growth = attributes.growth
  this.personas = attributes.personas  // need a serializer of has_many here, gives a new hash.
}

Segment.prototype.renderSegment = function(){
  return Segment.template(this);
}
