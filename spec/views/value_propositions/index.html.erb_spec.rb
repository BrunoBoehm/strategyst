require 'rails_helper'

RSpec.describe "value_propositions/index", type: :view do
  before(:each) do
    assign(:value_propositions, [
      ValueProposition.create!(
        :product_service => "MyText",
        :price => 2,
        :promotion => "MyText",
        :place => "MyText",
        :gain_creator => "MyText",
        :pain_reliever => "MyText",
        :differentiation => "MyText",
        :company => nil
      ),
      ValueProposition.create!(
        :product_service => "MyText",
        :price => 2,
        :promotion => "MyText",
        :place => "MyText",
        :gain_creator => "MyText",
        :pain_reliever => "MyText",
        :differentiation => "MyText",
        :company => nil
      )
    ])
  end

  it "renders a list of value_propositions" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
