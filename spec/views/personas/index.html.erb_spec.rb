require 'rails_helper'

RSpec.describe "personas/index", type: :view do
  before(:each) do
    assign(:personas, [
      Persona.create!(
        :name => "Name",
        :img => "Img",
        :role => "Role",
        :jobs => "MyText",
        :pains => "MyText",
        :gains => "MyText",
        :touch_points => "MyText",
        :quotes => "MyText",
        :age => 2,
        :income => 3,
        :education => 4,
        :location => "Location",
        :story => "MyText",
        :value_proposition => nil,
        :segment => nil
      ),
      Persona.create!(
        :name => "Name",
        :img => "Img",
        :role => "Role",
        :jobs => "MyText",
        :pains => "MyText",
        :gains => "MyText",
        :touch_points => "MyText",
        :quotes => "MyText",
        :age => 2,
        :income => 3,
        :education => 4,
        :location => "Location",
        :story => "MyText",
        :value_proposition => nil,
        :segment => nil
      )
    ])
  end

  it "renders a list of personas" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Img".to_s, :count => 2
    assert_select "tr>td", :text => "Role".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
