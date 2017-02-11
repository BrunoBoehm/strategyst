require 'rails_helper'

RSpec.describe "tactics/new", type: :view do
  before(:each) do
    assign(:tactic, Tactic.new(
      :pitch => "MyString",
      :description => "MyText",
      :medium => "MyString",
      :importance => 1,
      :frequency => "MyString",
      :kpi => "MyString",
      :budget => 1,
      :strategy => nil,
      :poc => nil
    ))
  end

  it "renders new tactic form" do
    render

    assert_select "form[action=?][method=?]", tactics_path, "post" do

      assert_select "input#tactic_pitch[name=?]", "tactic[pitch]"

      assert_select "textarea#tactic_description[name=?]", "tactic[description]"

      assert_select "input#tactic_medium[name=?]", "tactic[medium]"

      assert_select "input#tactic_importance[name=?]", "tactic[importance]"

      assert_select "input#tactic_frequency[name=?]", "tactic[frequency]"

      assert_select "input#tactic_kpi[name=?]", "tactic[kpi]"

      assert_select "input#tactic_budget[name=?]", "tactic[budget]"

      assert_select "input#tactic_strategy_id[name=?]", "tactic[strategy_id]"

      assert_select "input#tactic_poc_id[name=?]", "tactic[poc_id]"
    end
  end
end
