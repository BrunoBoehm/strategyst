require 'rails_helper'

RSpec.describe "objectives/edit", type: :view do
  before(:each) do
    @objective = assign(:objective, Objective.create!(
      :specific => "MyText",
      :measurable => "MyText",
      :achievable => "MyText",
      :realistic => "MyText",
      :segment => nil
    ))
  end

  it "renders the edit objective form" do
    render

    assert_select "form[action=?][method=?]", objective_path(@objective), "post" do

      assert_select "textarea#objective_specific[name=?]", "objective[specific]"

      assert_select "textarea#objective_measurable[name=?]", "objective[measurable]"

      assert_select "textarea#objective_achievable[name=?]", "objective[achievable]"

      assert_select "textarea#objective_realistic[name=?]", "objective[realistic]"

      assert_select "input#objective_segment_id[name=?]", "objective[segment_id]"
    end
  end
end
