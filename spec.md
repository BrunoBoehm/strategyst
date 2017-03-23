# Specs

[ ] render at least one index page via jQuery and an Active Model Serialization JSON Backend (on a has many relationship)
[ ] render at least one show page, like the next post being fetched and rendered via JQuery/AJAX
[x] rails API must reveal at least one has-many relationship in the JSON that is then rendered to the page
[x] use your Rails API and a form to create and serialize a resource and render the response without a page refresh
[x] translate the JSON responses into Javascript Model Objects, that must have at least one method on the prototype. Formatters work really well for this. Eg: create a Comment prototype object and add a function to that prototype to perhaps concatenate (format) the comments authors first and last name. You would then use the object to append the comment information to the DOM


Started GET "/companies/1" for ::1 at 2017-03-21 19:06:02 +0100
  ActiveRecord::SchemaMigration Load (0.4ms)  SELECT "schema_migrations".* FROM "schema_migrations"
Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"1"}
  User Load (0.6ms)  SELECT  "users".* FROM "users" WHERE "users"."id" = $1  ORDER BY "users"."id" ASC LIMIT 1  [["id", 1]]
  Company Load (0.4ms)  SELECT  "companies".* FROM "companies" WHERE "companies"."id" = $1 LIMIT 1  [["id", 1]]
  Segment Load (0.4ms)  SELECT "segments".* FROM "segments" WHERE "segments"."company_id" = $1  [["company_id", 1]]
  Objective Load (0.4ms)  SELECT "objectives".* FROM "objectives" WHERE "objectives"."segment_id" = $1  [["segment_id", 1]]
  Strategy Load (0.3ms)  SELECT "strategies".* FROM "strategies" WHERE "strategies"."objective_id" = $1  [["objective_id", 1]]
  Tactic Load (0.6ms)  SELECT "tactics".* FROM "tactics" WHERE "tactics"."strategy_id" = $1  [["strategy_id", 1]]
  Persona Load (0.7ms)  SELECT "personas".* FROM "personas" WHERE "personas"."segment_id" = $1  [["segment_id", 1]]
   (0.6ms)  SELECT COUNT(*) FROM "value_propositions" WHERE "value_propositions"."company_id" = $1  [["company_id", 1]]
  ValueProposition Load (0.2ms)  SELECT "value_propositions".* FROM "value_propositions" WHERE "value_propositions"."company_id" = $1  [["company_id", 1]]
  Persona Load (0.3ms)  SELECT "personas".* FROM "personas" WHERE "personas"."value_proposition_id" = $1  [["value_proposition_id", 1]]
  Rendered personas/_personas.html.erb (2.0ms)
  Rendered value_propositions/_value_propositions.html.erb (15.5ms)
   (0.2ms)  SELECT COUNT(*) FROM "segments" WHERE "segments"."company_id" = $1  [["company_id", 1]]
  Rendered personas/_personas.html.erb (4.6ms)
  Rendered personas/_personas.html.erb (2.0ms)
  Poc Load (0.4ms)  SELECT  "pocs".* FROM "pocs" WHERE "pocs"."id" = $1 LIMIT 1  [["id", 1]]
  Rendered tactics/_tactics.html.erb (16.2ms)
  Rendered strategies/_strategies.html.erb (19.1ms)
  Rendered objectives/_objectives.html.erb (25.7ms)
  Rendered segments/_segments.html.erb (33.1ms)
  Rendered personas/_personas.html.erb (1.7ms)
  Rendered personas/_personas.html.erb (2.0ms)
  Rendered tactics/_tactics.html.erb (1.1ms)
  Rendered strategies/_strategies.html.erb (2.6ms)
  Rendered objectives/_objectives.html.erb (7.5ms)
  Rendered tactics/_tactics.html.erb (1.0ms)
  Rendered strategies/_strategies.html.erb (2.5ms)
  Rendered tactics/_tactics.html.erb (0.9ms)
   (0.2ms)  SELECT COUNT(*) FROM "pocs" WHERE "pocs"."company_id" = $1  [["company_id", 1]]
  Poc Load (0.2ms)  SELECT "pocs".* FROM "pocs" WHERE "pocs"."company_id" = $1  [["company_id", 1]]
  Rendered companies/show.html.erb within layouts/full_width (90.5ms)
  Rendered shared/_head.html.erb (333.6ms)
  Rendered shared/_menu.html.erb (2.5ms)
  Rendered shared/_flash.html.erb (0.8ms)
  Rendered shared/_footer.html.erb (0.2ms)
Completed 200 OK in 617ms (Views: 439.0ms | ActiveRecord: 23.3ms)
