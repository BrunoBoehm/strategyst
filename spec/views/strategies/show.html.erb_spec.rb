require 'rails_helper'

RSpec.describe "strategies/show", type: :view do
  before(:each) do
    @strategy = assign(:strategy, Strategy.create!(
      :pitch => "Pitch",
      :description => "MyText",
      :ksf => "MyText",
      :objective => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Pitch/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
