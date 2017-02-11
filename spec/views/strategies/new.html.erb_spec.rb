require 'rails_helper'

RSpec.describe "strategies/new", type: :view do
  before(:each) do
    assign(:strategy, Strategy.new(
      :pitch => "MyString",
      :description => "MyText",
      :ksf => "MyText",
      :objective => nil
    ))
  end

  it "renders new strategy form" do
    render

    assert_select "form[action=?][method=?]", strategies_path, "post" do

      assert_select "input#strategy_pitch[name=?]", "strategy[pitch]"

      assert_select "textarea#strategy_description[name=?]", "strategy[description]"

      assert_select "textarea#strategy_ksf[name=?]", "strategy[ksf]"

      assert_select "input#strategy_objective_id[name=?]", "strategy[objective_id]"
    end
  end
end
