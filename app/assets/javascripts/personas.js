$(function(){

  Persona.template = Handlebars.compile($('#persona-template').html());
  personaClickHandler();

});

function personaClickHandler(){
  var loaded = {};
  // we want to make sure not to make an ajax call twice
  $('.container').on('click', '.personas h3.panel-title', function(event){
    console.log(event);
    var $persona = $(this);
    var $id = $persona.data('persona-id');
    console.log('Id = ' + $id);
    console.log(loaded);

    if (loaded[$id]) {
      var persona = loaded[$id];
      if ( !$persona.closest('.panel-default').data('mounted') ) addPersonaToDOM(persona);
      console.log("No duplicate Ajax call");
      console.log("Not mounted");
      // we want to make sure not to mount twice on the same clicked element
    } else {
      $.ajax({
        url: "/personas/" + $id,
        method: "GET",
        dataType: "json"
      }).done(function(response){
        console.log("Ajax call was made");
        var persona = new Persona(response);
        loaded[$id] = persona;
        console.log(loaded);
        addPersonaToDOM(persona);
      }).fail(function(error){
        console.log(error);
      });
    }

    function addPersonaToDOM(persona){
      console.log("Adding persona to DOM");
      var personaHTML = Persona.template(persona);
      $persona.closest('.panel-default').data('mounted', true).find('.list-group').html(personaHTML);
    }

  });

}

function Persona(attributes){
  this.name = attributes.name;
  this.role = attributes.role;
  this.age = attributes.age;
  this.img = attributes.img;
  this.location = attributes.location;
  this.education = attributes.education;
  this.income = attributes.income;
  this.story = attributes.story;
  this.jobs = attributes.jobs;
  this.pains = attributes.pains;
  this.gains = attributes.gains;
  this.quotes = attributes.quotes;
  this.touch_points = attributes.touch_points;
}

Persona.prototype.renderPersona = function(){
  return Persona.template(this);
  // 'this' is the Persona instance
  // it gets passed to the Persona 'class method' template
}
