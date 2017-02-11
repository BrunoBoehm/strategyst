require 'rails_helper'

RSpec.describe "value_propositions/show", type: :view do
  before(:each) do
    @value_proposition = assign(:value_proposition, ValueProposition.create!(
      :product_service => "MyText",
      :price => 2,
      :promotion => "MyText",
      :place => "MyText",
      :gain_creator => "MyText",
      :pain_reliever => "MyText",
      :differentiation => "MyText",
      :company => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
