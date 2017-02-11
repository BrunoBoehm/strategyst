require 'rails_helper'

RSpec.describe "personas/new", type: :view do
  before(:each) do
    assign(:persona, Persona.new(
      :name => "MyString",
      :img => "MyString",
      :role => "MyString",
      :jobs => "MyText",
      :pains => "MyText",
      :gains => "MyText",
      :touch_points => "MyText",
      :quotes => "MyText",
      :age => 1,
      :income => 1,
      :education => 1,
      :location => "MyString",
      :story => "MyText",
      :value_proposition => nil,
      :segment => nil
    ))
  end

  it "renders new persona form" do
    render

    assert_select "form[action=?][method=?]", personas_path, "post" do

      assert_select "input#persona_name[name=?]", "persona[name]"

      assert_select "input#persona_img[name=?]", "persona[img]"

      assert_select "input#persona_role[name=?]", "persona[role]"

      assert_select "textarea#persona_jobs[name=?]", "persona[jobs]"

      assert_select "textarea#persona_pains[name=?]", "persona[pains]"

      assert_select "textarea#persona_gains[name=?]", "persona[gains]"

      assert_select "textarea#persona_touch_points[name=?]", "persona[touch_points]"

      assert_select "textarea#persona_quotes[name=?]", "persona[quotes]"

      assert_select "input#persona_age[name=?]", "persona[age]"

      assert_select "input#persona_income[name=?]", "persona[income]"

      assert_select "input#persona_education[name=?]", "persona[education]"

      assert_select "input#persona_location[name=?]", "persona[location]"

      assert_select "textarea#persona_story[name=?]", "persona[story]"

      assert_select "input#persona_value_proposition_id[name=?]", "persona[value_proposition_id]"

      assert_select "input#persona_segment_id[name=?]", "persona[segment_id]"
    end
  end
end
