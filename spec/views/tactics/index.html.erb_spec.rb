require 'rails_helper'

RSpec.describe "tactics/index", type: :view do
  before(:each) do
    assign(:tactics, [
      Tactic.create!(
        :pitch => "Pitch",
        :description => "MyText",
        :medium => "Medium",
        :importance => 2,
        :frequency => "Frequency",
        :kpi => "Kpi",
        :budget => 3,
        :strategy => nil,
        :poc => nil
      ),
      Tactic.create!(
        :pitch => "Pitch",
        :description => "MyText",
        :medium => "Medium",
        :importance => 2,
        :frequency => "Frequency",
        :kpi => "Kpi",
        :budget => 3,
        :strategy => nil,
        :poc => nil
      )
    ])
  end

  it "renders a list of tactics" do
    render
    assert_select "tr>td", :text => "Pitch".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Medium".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Frequency".to_s, :count => 2
    assert_select "tr>td", :text => "Kpi".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
