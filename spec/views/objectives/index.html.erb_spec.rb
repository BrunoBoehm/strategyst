require 'rails_helper'

RSpec.describe "objectives/index", type: :view do
  before(:each) do
    assign(:objectives, [
      Objective.create!(
        :specific => "MyText",
        :measurable => "MyText",
        :achievable => "MyText",
        :realistic => "MyText",
        :segment => nil
      ),
      Objective.create!(
        :specific => "MyText",
        :measurable => "MyText",
        :achievable => "MyText",
        :realistic => "MyText",
        :segment => nil
      )
    ])
  end

  it "renders a list of objectives" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
