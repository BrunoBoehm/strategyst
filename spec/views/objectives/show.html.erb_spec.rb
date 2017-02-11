require 'rails_helper'

RSpec.describe "objectives/show", type: :view do
  before(:each) do
    @objective = assign(:objective, Objective.create!(
      :specific => "MyText",
      :measurable => "MyText",
      :achievable => "MyText",
      :realistic => "MyText",
      :segment => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
