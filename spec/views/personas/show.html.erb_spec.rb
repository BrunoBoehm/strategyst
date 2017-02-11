require 'rails_helper'

RSpec.describe "personas/show", type: :view do
  before(:each) do
    @persona = assign(:persona, Persona.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Img/)
    expect(rendered).to match(/Role/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
